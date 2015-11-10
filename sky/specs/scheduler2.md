# Flutter Scheduler

This document discusses several scheduler options for Flutter. We discuss
integration, and usability.

We have several ways to provide a new scheduler to the users, witch different
levels of integration into the scheduler. The most basic scheduler could, for
example, be completely in user code (not requiring any changes to the embedder).
Other options gradually integrate more; starting with minor hooks into the
system, and finishing with the full implementation in C++ (just exposing some
Dart hooks).

## Minimal Integration

In this scenario the integration is minimal. In fact, it might easily be that
the current system already exposes the necessary information: the "free" time
that can be used.

Basically, the user-space scheduler would allow to register callbacks, and
execute them depending on how much time is left before the next frame.
Callbacks (aka "Tasks") would need to provide their priority, and their
expected running time. The scheduler could then pick the task with the highest
priority (that still fits the slice) and execute it.

In its simplest form the implementation could resemble something like:

```
class Scheduler {
  // Uses the remaining idle-time to run tasks.
  void useIdleTime() {
    List tasksToDetach = [];
    for (Task task in tasksSortedByPriority) {
      if (task.expectedRunTime < System.remainingIdleTimeInMs) {
        tasksToDetach.add(task);
        task.run();
      }
    }
    tasksSortedByPriority.removeAll(tasksToDetach);
  }
}
```

It is not clear who (and when) should call the `useIdleTime` function. One
possibility is to make this a callback from the system. Another would be to
go through the scheduler all the time.

Also, this simple implementation doesn't take into account any microtasks that
are scheduled from within the task. This could be resolved with zones. They
allow to intercept calls to queue microtasks. Each task could be started in a
new zone.

## System Integration

If we wanted to have more control over how tasks run, we could run them in their
own event-loop cycle. Dart was initially designed to run in the browser, where
Dart, JavaScript and the DOM would fight for CPU cycles. Each would get time
to run until completion. If any of those took too much CPU time, the others
would starve (the typical freeze when JavaScript programs were not yielding fast
enough).

However, now every asynchronous Dart execution yields back to the event-loop. In
Dart, microtasks hold on to their current cycle. This means, that a Dart program
should not schedule microtasks if it wants to give the rest of the system time
to react. (Note: `new Future` schedules a new timer-task which yields to the
event-loop. Initially, it was a microtask, but we were afraid, that programs
would accidentally starve the DOM.)

If we integrated tasks into the system, we could treat them like independent
Dart executions (with their own microtask queue). This would have several
advantages:
- a task would have its microtask scheduled in a predictible way (not
interleaved with other tasks). Interleaving is generally a problem since
libraries/packages might not agree on the same granularity. This could be
worked around with zones, though.
- the system could know how many tasks are pending (and what priority they
have).

In would come with its own challenges though:
- tighter integration with the system.
- zones wouldn't know about tasks. (Angular uses zones to mock the event-loop
in tests. This wouldn't be possible anymore).

### Interrupting Long-running Code

Dart doesn't have any way to interrupt long-running programs. If a Dart program
decides to run in an infinite loop, it can do that and starve the rest of the
program. Chrome has the possibility to interrupt long-running JavaScript or
Dart. This works in coordination with the VM. Afaik, the implementations in
Chrome are simply stopping the current cycle. It would be easy to be more
gentle. One could start by setting a static boolean, followed
by throwing a "YouAreRunningTooLong" exception. This would the task give a
chance to react and/or clean up before it gets killed.

## Usability

We could make it easier for the programmer to cut its work-load into smaller
pieces by using the async/await syntax. In this approach the scheduler would
not invoke a callback, but complete a future:

```
void myLongRunningComputation() async {
  while (true) {
    doSomething();
    await scheduler.release();
  }
}
```

The scheduler would then return a future that is only completed when there is
more time. There are many possibilities to improve this basic idea:

```
void myLongRunningComputation() async {
  while (true) {
    doSomething();
    // Don't yield to the event-loop if it's not necessary.
    if (scheduler.shouldRelease) await scheduler.release();
  }
}

```

```
void myLongRunningComputation() async {
  while (true) {
    doSomething();
    await scheduler.release(priority: 499);
  }
}

```

If it is common to run loops, then it might even be interesting to let the
scheduler keep track of how fast each iteration is. The task should then
inform the scheduler that it is running in a regular regime. That is,
the scheduler could measure the time for one iteration, and use this as
estimate for future iterations. Since devices don't run at the same speed this
would allow much more flexibility.

```
void myLongRunningComputation() async {
  while (true) {
    doSomething();
    await scheduler.release(priority: 499, regime: Regime.stable);
  }
}
```

