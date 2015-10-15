// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library activity_mojom;

import 'dart:async';

import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
class SystemUiVisibility extends bindings.MojoEnum {
  static const STANDARD = const SystemUiVisibility._(0);
  static const FULLSCREEN = const SystemUiVisibility._(1);
  static const IMMERSIVE = const SystemUiVisibility._(2);

  const SystemUiVisibility._(int v) : super(v);

  static const Map<String, SystemUiVisibility> valuesMap = const {
    "STANDARD": STANDARD,
    "FULLSCREEN": FULLSCREEN,
    "IMMERSIVE": IMMERSIVE,
  };
  static const List<SystemUiVisibility> values = const [
    STANDARD,
    FULLSCREEN,
    IMMERSIVE,
  ];

  static SystemUiVisibility valueOf(String name) => valuesMap[name];

  factory SystemUiVisibility(int v) {
    switch (v) {
      case 0:
        return STANDARD;
      case 1:
        return FULLSCREEN;
      case 2:
        return IMMERSIVE;
      default:
        return null;
    }
  }

  static SystemUiVisibility decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    SystemUiVisibility result = new SystemUiVisibility(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum SystemUiVisibility.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case STANDARD:
        return 'SystemUiVisibility.STANDARD';
      case FULLSCREEN:
        return 'SystemUiVisibility.FULLSCREEN';
      case IMMERSIVE:
        return 'SystemUiVisibility.IMMERSIVE';
    }
  }

  int toJson() => value;
}
class ScreenOrientation extends bindings.MojoEnum {
  static const UNSPECIFIED = const ScreenOrientation._(0);
  static const LANDSCAPE = const ScreenOrientation._(1);
  static const PORTRAIT = const ScreenOrientation._(2);
  static const NOSENSOR = const ScreenOrientation._(3);

  const ScreenOrientation._(int v) : super(v);

  static const Map<String, ScreenOrientation> valuesMap = const {
    "UNSPECIFIED": UNSPECIFIED,
    "LANDSCAPE": LANDSCAPE,
    "PORTRAIT": PORTRAIT,
    "NOSENSOR": NOSENSOR,
  };
  static const List<ScreenOrientation> values = const [
    UNSPECIFIED,
    LANDSCAPE,
    PORTRAIT,
    NOSENSOR,
  ];

  static ScreenOrientation valueOf(String name) => valuesMap[name];

  factory ScreenOrientation(int v) {
    switch (v) {
      case 0:
        return UNSPECIFIED;
      case 1:
        return LANDSCAPE;
      case 2:
        return PORTRAIT;
      case 3:
        return NOSENSOR;
      default:
        return null;
    }
  }

  static ScreenOrientation decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    ScreenOrientation result = new ScreenOrientation(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum ScreenOrientation.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case UNSPECIFIED:
        return 'ScreenOrientation.UNSPECIFIED';
      case LANDSCAPE:
        return 'ScreenOrientation.LANDSCAPE';
      case PORTRAIT:
        return 'ScreenOrientation.PORTRAIT';
      case NOSENSOR:
        return 'ScreenOrientation.NOSENSOR';
    }
  }

  int toJson() => value;
}
class HapticFeedbackType extends bindings.MojoEnum {
  static const LONG_PRESS = const HapticFeedbackType._(0);
  static const VIRTUAL_KEY = const HapticFeedbackType._(1);
  static const KEYBOARD_TAP = const HapticFeedbackType._(2);
  static const CLOCK_TICK = const HapticFeedbackType._(3);

  const HapticFeedbackType._(int v) : super(v);

  static const Map<String, HapticFeedbackType> valuesMap = const {
    "LONG_PRESS": LONG_PRESS,
    "VIRTUAL_KEY": VIRTUAL_KEY,
    "KEYBOARD_TAP": KEYBOARD_TAP,
    "CLOCK_TICK": CLOCK_TICK,
  };
  static const List<HapticFeedbackType> values = const [
    LONG_PRESS,
    VIRTUAL_KEY,
    KEYBOARD_TAP,
    CLOCK_TICK,
  ];

  static HapticFeedbackType valueOf(String name) => valuesMap[name];

  factory HapticFeedbackType(int v) {
    switch (v) {
      case 0:
        return LONG_PRESS;
      case 1:
        return VIRTUAL_KEY;
      case 2:
        return KEYBOARD_TAP;
      case 3:
        return CLOCK_TICK;
      default:
        return null;
    }
  }

  static HapticFeedbackType decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    HapticFeedbackType result = new HapticFeedbackType(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum HapticFeedbackType.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case LONG_PRESS:
        return 'HapticFeedbackType.LONG_PRESS';
      case VIRTUAL_KEY:
        return 'HapticFeedbackType.VIRTUAL_KEY';
      case KEYBOARD_TAP:
        return 'HapticFeedbackType.KEYBOARD_TAP';
      case CLOCK_TICK:
        return 'HapticFeedbackType.CLOCK_TICK';
    }
  }

  int toJson() => value;
}
class AuralFeedbackType extends bindings.MojoEnum {
  static const CLICK = const AuralFeedbackType._(0);
  static const NAVIGATION_LEFT = const AuralFeedbackType._(1);
  static const NAVIGATION_UP = const AuralFeedbackType._(2);
  static const NAVIGATION_RIGHT = const AuralFeedbackType._(3);
  static const NAVIGATION_DOWN = const AuralFeedbackType._(4);

  const AuralFeedbackType._(int v) : super(v);

  static const Map<String, AuralFeedbackType> valuesMap = const {
    "CLICK": CLICK,
    "NAVIGATION_LEFT": NAVIGATION_LEFT,
    "NAVIGATION_UP": NAVIGATION_UP,
    "NAVIGATION_RIGHT": NAVIGATION_RIGHT,
    "NAVIGATION_DOWN": NAVIGATION_DOWN,
  };
  static const List<AuralFeedbackType> values = const [
    CLICK,
    NAVIGATION_LEFT,
    NAVIGATION_UP,
    NAVIGATION_RIGHT,
    NAVIGATION_DOWN,
  ];

  static AuralFeedbackType valueOf(String name) => valuesMap[name];

  factory AuralFeedbackType(int v) {
    switch (v) {
      case 0:
        return CLICK;
      case 1:
        return NAVIGATION_LEFT;
      case 2:
        return NAVIGATION_UP;
      case 3:
        return NAVIGATION_RIGHT;
      case 4:
        return NAVIGATION_DOWN;
      default:
        return null;
    }
  }

  static AuralFeedbackType decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    AuralFeedbackType result = new AuralFeedbackType(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum AuralFeedbackType.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case CLICK:
        return 'AuralFeedbackType.CLICK';
      case NAVIGATION_LEFT:
        return 'AuralFeedbackType.NAVIGATION_LEFT';
      case NAVIGATION_UP:
        return 'AuralFeedbackType.NAVIGATION_UP';
      case NAVIGATION_RIGHT:
        return 'AuralFeedbackType.NAVIGATION_RIGHT';
      case NAVIGATION_DOWN:
        return 'AuralFeedbackType.NAVIGATION_DOWN';
    }
  }

  int toJson() => value;
}



class StringExtra extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String name = null;
  String value = null;

  StringExtra() : super(kVersions.last.size);

  static StringExtra deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static StringExtra decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    StringExtra result = new StringExtra();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.name = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.value = decoder0.decodeString(16, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(name, 8, false);
    
    encoder0.encodeString(value, 16, false);
  }

  String toString() {
    return "StringExtra("
           "name: $name" ", "
           "value: $value" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["name"] = name;
    map["value"] = value;
    return map;
  }
}


class ComponentName extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String packageName = null;
  String className = null;

  ComponentName() : super(kVersions.last.size);

  static ComponentName deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static ComponentName decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ComponentName result = new ComponentName();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.packageName = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.className = decoder0.decodeString(16, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(packageName, 8, false);
    
    encoder0.encodeString(className, 16, false);
  }

  String toString() {
    return "ComponentName("
           "packageName: $packageName" ", "
           "className: $className" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["packageName"] = packageName;
    map["className"] = className;
    return map;
  }
}


class Intent extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(48, 0)
  ];
  String action = null;
  String url = null;
  int flags = 0;
  ComponentName component = null;
  List<StringExtra> stringExtras = null;

  Intent() : super(kVersions.last.size);

  static Intent deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static Intent decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Intent result = new Intent();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.action = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.url = decoder0.decodeString(16, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.flags = decoder0.decodeUint32(24);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(32, true);
      result.component = ComponentName.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(40, true);
      if (decoder1 == null) {
        result.stringExtras = null;
      } else {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.stringExtras = new List<StringExtra>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
          result.stringExtras[i1] = StringExtra.decode(decoder2);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(action, 8, false);
    
    encoder0.encodeString(url, 16, false);
    
    encoder0.encodeUint32(flags, 24);
    
    encoder0.encodeStruct(component, 32, true);
    
    if (stringExtras == null) {
      encoder0.encodeNullPointer(40, true);
    } else {
      var encoder1 = encoder0.encodePointerArray(stringExtras.length, 40, bindings.kUnspecifiedArrayLength);
      for (int i0 = 0; i0 < stringExtras.length; ++i0) {
        
        encoder1.encodeStruct(stringExtras[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
      }
    }
  }

  String toString() {
    return "Intent("
           "action: $action" ", "
           "url: $url" ", "
           "flags: $flags" ", "
           "component: $component" ", "
           "stringExtras: $stringExtras" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["action"] = action;
    map["url"] = url;
    map["flags"] = flags;
    map["component"] = component;
    map["stringExtras"] = stringExtras;
    return map;
  }
}


class TaskDescription extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String label = null;
  int primaryColor = 0;

  TaskDescription() : super(kVersions.last.size);

  static TaskDescription deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static TaskDescription decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    TaskDescription result = new TaskDescription();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.label = decoder0.decodeString(8, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.primaryColor = decoder0.decodeUint32(16);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(label, 8, true);
    
    encoder0.encodeUint32(primaryColor, 16);
  }

  String toString() {
    return "TaskDescription("
           "label: $label" ", "
           "primaryColor: $primaryColor" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["label"] = label;
    map["primaryColor"] = primaryColor;
    return map;
  }
}


class ActivityGetUserFeedbackParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Object userFeedback = null;

  ActivityGetUserFeedbackParams() : super(kVersions.last.size);

  static ActivityGetUserFeedbackParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static ActivityGetUserFeedbackParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ActivityGetUserFeedbackParams result = new ActivityGetUserFeedbackParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.userFeedback = decoder0.decodeInterfaceRequest(8, false, UserFeedbackStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeInterfaceRequest(userFeedback, 8, false);
  }

  String toString() {
    return "ActivityGetUserFeedbackParams("
           "userFeedback: $userFeedback" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class ActivityStartActivityParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Intent intent = null;

  ActivityStartActivityParams() : super(kVersions.last.size);

  static ActivityStartActivityParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static ActivityStartActivityParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ActivityStartActivityParams result = new ActivityStartActivityParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.intent = Intent.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(intent, 8, false);
  }

  String toString() {
    return "ActivityStartActivityParams("
           "intent: $intent" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["intent"] = intent;
    return map;
  }
}


class ActivityFinishCurrentActivityParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  ActivityFinishCurrentActivityParams() : super(kVersions.last.size);

  static ActivityFinishCurrentActivityParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static ActivityFinishCurrentActivityParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ActivityFinishCurrentActivityParams result = new ActivityFinishCurrentActivityParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "ActivityFinishCurrentActivityParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class ActivitySetTaskDescriptionParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  TaskDescription description = null;

  ActivitySetTaskDescriptionParams() : super(kVersions.last.size);

  static ActivitySetTaskDescriptionParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static ActivitySetTaskDescriptionParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ActivitySetTaskDescriptionParams result = new ActivitySetTaskDescriptionParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.description = TaskDescription.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeStruct(description, 8, false);
  }

  String toString() {
    return "ActivitySetTaskDescriptionParams("
           "description: $description" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["description"] = description;
    return map;
  }
}


class ActivitySetSystemUiVisibilityParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  SystemUiVisibility visibility = null;

  ActivitySetSystemUiVisibilityParams() : super(kVersions.last.size);

  static ActivitySetSystemUiVisibilityParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static ActivitySetSystemUiVisibilityParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ActivitySetSystemUiVisibilityParams result = new ActivitySetSystemUiVisibilityParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
        result.visibility = SystemUiVisibility.decode(decoder0, 8);
        if (result.visibility == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable SystemUiVisibility.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeEnum(visibility, 8);
  }

  String toString() {
    return "ActivitySetSystemUiVisibilityParams("
           "visibility: $visibility" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["visibility"] = visibility;
    return map;
  }
}


class ActivitySetRequestedOrientationParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  ScreenOrientation orientation = null;

  ActivitySetRequestedOrientationParams() : super(kVersions.last.size);

  static ActivitySetRequestedOrientationParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static ActivitySetRequestedOrientationParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ActivitySetRequestedOrientationParams result = new ActivitySetRequestedOrientationParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
        result.orientation = ScreenOrientation.decode(decoder0, 8);
        if (result.orientation == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable ScreenOrientation.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeEnum(orientation, 8);
  }

  String toString() {
    return "ActivitySetRequestedOrientationParams("
           "orientation: $orientation" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["orientation"] = orientation;
    return map;
  }
}


class PathServiceGetAppDataDirParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  PathServiceGetAppDataDirParams() : super(kVersions.last.size);

  static PathServiceGetAppDataDirParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static PathServiceGetAppDataDirParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    PathServiceGetAppDataDirParams result = new PathServiceGetAppDataDirParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "PathServiceGetAppDataDirParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class PathServiceGetAppDataDirResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  String path = null;

  PathServiceGetAppDataDirResponseParams() : super(kVersions.last.size);

  static PathServiceGetAppDataDirResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static PathServiceGetAppDataDirResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    PathServiceGetAppDataDirResponseParams result = new PathServiceGetAppDataDirResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.path = decoder0.decodeString(8, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(path, 8, false);
  }

  String toString() {
    return "PathServiceGetAppDataDirResponseParams("
           "path: $path" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["path"] = path;
    return map;
  }
}


class PathServiceGetFilesDirParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  PathServiceGetFilesDirParams() : super(kVersions.last.size);

  static PathServiceGetFilesDirParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static PathServiceGetFilesDirParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    PathServiceGetFilesDirParams result = new PathServiceGetFilesDirParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "PathServiceGetFilesDirParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class PathServiceGetFilesDirResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  String path = null;

  PathServiceGetFilesDirResponseParams() : super(kVersions.last.size);

  static PathServiceGetFilesDirResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static PathServiceGetFilesDirResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    PathServiceGetFilesDirResponseParams result = new PathServiceGetFilesDirResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.path = decoder0.decodeString(8, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(path, 8, false);
  }

  String toString() {
    return "PathServiceGetFilesDirResponseParams("
           "path: $path" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["path"] = path;
    return map;
  }
}


class PathServiceGetCacheDirParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  PathServiceGetCacheDirParams() : super(kVersions.last.size);

  static PathServiceGetCacheDirParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static PathServiceGetCacheDirParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    PathServiceGetCacheDirParams result = new PathServiceGetCacheDirParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "PathServiceGetCacheDirParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class PathServiceGetCacheDirResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  String path = null;

  PathServiceGetCacheDirResponseParams() : super(kVersions.last.size);

  static PathServiceGetCacheDirResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static PathServiceGetCacheDirResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    PathServiceGetCacheDirResponseParams result = new PathServiceGetCacheDirResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.path = decoder0.decodeString(8, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeString(path, 8, false);
  }

  String toString() {
    return "PathServiceGetCacheDirResponseParams("
           "path: $path" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["path"] = path;
    return map;
  }
}


class UpdateServiceNotifyUpdateCheckCompleteParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  UpdateServiceNotifyUpdateCheckCompleteParams() : super(kVersions.last.size);

  static UpdateServiceNotifyUpdateCheckCompleteParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UpdateServiceNotifyUpdateCheckCompleteParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UpdateServiceNotifyUpdateCheckCompleteParams result = new UpdateServiceNotifyUpdateCheckCompleteParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "UpdateServiceNotifyUpdateCheckCompleteParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class UserFeedbackPerformHapticFeedbackParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  HapticFeedbackType type = null;

  UserFeedbackPerformHapticFeedbackParams() : super(kVersions.last.size);

  static UserFeedbackPerformHapticFeedbackParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UserFeedbackPerformHapticFeedbackParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UserFeedbackPerformHapticFeedbackParams result = new UserFeedbackPerformHapticFeedbackParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
        result.type = HapticFeedbackType.decode(decoder0, 8);
        if (result.type == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable HapticFeedbackType.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeEnum(type, 8);
  }

  String toString() {
    return "UserFeedbackPerformHapticFeedbackParams("
           "type: $type" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["type"] = type;
    return map;
  }
}


class UserFeedbackPerformAuralFeedbackParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  AuralFeedbackType type = null;

  UserFeedbackPerformAuralFeedbackParams() : super(kVersions.last.size);

  static UserFeedbackPerformAuralFeedbackParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    decoder.excessHandles.forEach((h) => h.close());
    return result;
  }

  static UserFeedbackPerformAuralFeedbackParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    UserFeedbackPerformAuralFeedbackParams result = new UserFeedbackPerformAuralFeedbackParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
        result.type = AuralFeedbackType.decode(decoder0, 8);
        if (result.type == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable AuralFeedbackType.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    
    encoder0.encodeEnum(type, 8);
  }

  String toString() {
    return "UserFeedbackPerformAuralFeedbackParams("
           "type: $type" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["type"] = type;
    return map;
  }
}

const int kActivity_getUserFeedback_name = 0;
const int kActivity_startActivity_name = 1;
const int kActivity_finishCurrentActivity_name = 2;
const int kActivity_setTaskDescription_name = 3;
const int kActivity_setSystemUiVisibility_name = 4;
const int kActivity_setRequestedOrientation_name = 5;

const String ActivityName =
      'activity::Activity';

abstract class Activity {
  void getUserFeedback(Object userFeedback);
  void startActivity(Intent intent);
  void finishCurrentActivity();
  void setTaskDescription(TaskDescription description);
  void setSystemUiVisibility(SystemUiVisibility visibility);
  void setRequestedOrientation(ScreenOrientation orientation);

}


class ActivityProxyImpl extends bindings.Proxy {
  ActivityProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  ActivityProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  ActivityProxyImpl.unbound() : super.unbound();

  static ActivityProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For ActivityProxyImpl"));
    return new ActivityProxyImpl.fromEndpoint(endpoint);
  }

  String get name => ActivityName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "ActivityProxyImpl($superString)";
  }
}


class _ActivityProxyCalls implements Activity {
  ActivityProxyImpl _proxyImpl;

  _ActivityProxyCalls(this._proxyImpl);
    void getUserFeedback(Object userFeedback) {
      assert(_proxyImpl.isBound);
      var params = new ActivityGetUserFeedbackParams();
      params.userFeedback = userFeedback;
      _proxyImpl.sendMessage(params, kActivity_getUserFeedback_name);
    }
  
    void startActivity(Intent intent) {
      assert(_proxyImpl.isBound);
      var params = new ActivityStartActivityParams();
      params.intent = intent;
      _proxyImpl.sendMessage(params, kActivity_startActivity_name);
    }
  
    void finishCurrentActivity() {
      assert(_proxyImpl.isBound);
      var params = new ActivityFinishCurrentActivityParams();
      _proxyImpl.sendMessage(params, kActivity_finishCurrentActivity_name);
    }
  
    void setTaskDescription(TaskDescription description) {
      if (!_proxyImpl.isBound)
        return;
      var params = new ActivitySetTaskDescriptionParams();
      params.description = description;
      _proxyImpl.sendMessage(params, kActivity_setTaskDescription_name);
    }
  
    void setSystemUiVisibility(SystemUiVisibility visibility) {
      assert(_proxyImpl.isBound);
      var params = new ActivitySetSystemUiVisibilityParams();
      params.visibility = visibility;
      _proxyImpl.sendMessage(params, kActivity_setSystemUiVisibility_name);
    }
  
    void setRequestedOrientation(ScreenOrientation orientation) {
      assert(_proxyImpl.isBound);
      var params = new ActivitySetRequestedOrientationParams();
      params.orientation = orientation;
      _proxyImpl.sendMessage(params, kActivity_setRequestedOrientation_name);
    }
  
}


class ActivityProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  Activity ptr;
  final String name = ActivityName;

  ActivityProxy(ActivityProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _ActivityProxyCalls(proxyImpl);

  ActivityProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new ActivityProxyImpl.fromEndpoint(endpoint) {
    ptr = new _ActivityProxyCalls(impl);
  }

  ActivityProxy.fromHandle(core.MojoHandle handle) :
      impl = new ActivityProxyImpl.fromHandle(handle) {
    ptr = new _ActivityProxyCalls(impl);
  }

  ActivityProxy.unbound() :
      impl = new ActivityProxyImpl.unbound() {
    ptr = new _ActivityProxyCalls(impl);
  }

  static ActivityProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For ActivityProxy"));
    return new ActivityProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "ActivityProxy($impl)";
  }
}


class ActivityStub extends bindings.Stub {
  Activity _impl = null;

  ActivityStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  ActivityStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  ActivityStub.unbound() : super.unbound();

  static ActivityStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For ActivityStub"));
    return new ActivityStub.fromEndpoint(endpoint);
  }

  static const String name = ActivityName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kActivity_getUserFeedback_name:
        var params = ActivityGetUserFeedbackParams.deserialize(
            message.payload);
        _impl.getUserFeedback(params.userFeedback);
        break;
      case kActivity_startActivity_name:
        var params = ActivityStartActivityParams.deserialize(
            message.payload);
        _impl.startActivity(params.intent);
        break;
      case kActivity_finishCurrentActivity_name:
        var params = ActivityFinishCurrentActivityParams.deserialize(
            message.payload);
        _impl.finishCurrentActivity();
        break;
      case kActivity_setTaskDescription_name:
        var params = ActivitySetTaskDescriptionParams.deserialize(
            message.payload);
        _impl.setTaskDescription(params.description);
        break;
      case kActivity_setSystemUiVisibility_name:
        var params = ActivitySetSystemUiVisibilityParams.deserialize(
            message.payload);
        _impl.setSystemUiVisibility(params.visibility);
        break;
      case kActivity_setRequestedOrientation_name:
        var params = ActivitySetRequestedOrientationParams.deserialize(
            message.payload);
        _impl.setRequestedOrientation(params.orientation);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  Activity get impl => _impl;
  set impl(Activity d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "ActivityStub($superString)";
  }

  int get version => 0;
}

const int kPathService_getAppDataDir_name = 0;
const int kPathService_getFilesDir_name = 1;
const int kPathService_getCacheDir_name = 2;

const String PathServiceName =
      'activity::PathService';

abstract class PathService {
  Future<PathServiceGetAppDataDirResponseParams> getAppDataDir([Function responseFactory = null]);
  Future<PathServiceGetFilesDirResponseParams> getFilesDir([Function responseFactory = null]);
  Future<PathServiceGetCacheDirResponseParams> getCacheDir([Function responseFactory = null]);

}


class PathServiceProxyImpl extends bindings.Proxy {
  PathServiceProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  PathServiceProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  PathServiceProxyImpl.unbound() : super.unbound();

  static PathServiceProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For PathServiceProxyImpl"));
    return new PathServiceProxyImpl.fromEndpoint(endpoint);
  }

  String get name => PathServiceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case kPathService_getAppDataDir_name:
        var r = PathServiceGetAppDataDirResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          throw 'Expected a message with a valid request Id.';
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          throw 'Message had unknown request Id: ${message.header.requestId}';
        }
        completerMap.remove(message.header.requestId);
        assert(!c.isCompleted);
        c.complete(r);
        break;
      case kPathService_getFilesDir_name:
        var r = PathServiceGetFilesDirResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          throw 'Expected a message with a valid request Id.';
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          throw 'Message had unknown request Id: ${message.header.requestId}';
        }
        completerMap.remove(message.header.requestId);
        assert(!c.isCompleted);
        c.complete(r);
        break;
      case kPathService_getCacheDir_name:
        var r = PathServiceGetCacheDirResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          throw 'Expected a message with a valid request Id.';
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          throw 'Message had unknown request Id: ${message.header.requestId}';
        }
        completerMap.remove(message.header.requestId);
        assert(!c.isCompleted);
        c.complete(r);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "PathServiceProxyImpl($superString)";
  }
}


class _PathServiceProxyCalls implements PathService {
  PathServiceProxyImpl _proxyImpl;

  _PathServiceProxyCalls(this._proxyImpl);
    Future<PathServiceGetAppDataDirResponseParams> getAppDataDir([Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new PathServiceGetAppDataDirParams();
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kPathService_getAppDataDir_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    Future<PathServiceGetFilesDirResponseParams> getFilesDir([Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new PathServiceGetFilesDirParams();
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kPathService_getFilesDir_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
    Future<PathServiceGetCacheDirResponseParams> getCacheDir([Function responseFactory = null]) {
      assert(_proxyImpl.isBound);
      var params = new PathServiceGetCacheDirParams();
      return _proxyImpl.sendMessageWithRequestId(
          params,
          kPathService_getCacheDir_name,
          -1,
          bindings.MessageHeader.kMessageExpectsResponse);
    }
}


class PathServiceProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  PathService ptr;
  final String name = PathServiceName;

  PathServiceProxy(PathServiceProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _PathServiceProxyCalls(proxyImpl);

  PathServiceProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new PathServiceProxyImpl.fromEndpoint(endpoint) {
    ptr = new _PathServiceProxyCalls(impl);
  }

  PathServiceProxy.fromHandle(core.MojoHandle handle) :
      impl = new PathServiceProxyImpl.fromHandle(handle) {
    ptr = new _PathServiceProxyCalls(impl);
  }

  PathServiceProxy.unbound() :
      impl = new PathServiceProxyImpl.unbound() {
    ptr = new _PathServiceProxyCalls(impl);
  }

  static PathServiceProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For PathServiceProxy"));
    return new PathServiceProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "PathServiceProxy($impl)";
  }
}


class PathServiceStub extends bindings.Stub {
  PathService _impl = null;

  PathServiceStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  PathServiceStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  PathServiceStub.unbound() : super.unbound();

  static PathServiceStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For PathServiceStub"));
    return new PathServiceStub.fromEndpoint(endpoint);
  }

  static const String name = PathServiceName;


  PathServiceGetAppDataDirResponseParams _PathServiceGetAppDataDirResponseParamsFactory(String path) {
    var result = new PathServiceGetAppDataDirResponseParams();
    result.path = path;
    return result;
  }
  PathServiceGetFilesDirResponseParams _PathServiceGetFilesDirResponseParamsFactory(String path) {
    var result = new PathServiceGetFilesDirResponseParams();
    result.path = path;
    return result;
  }
  PathServiceGetCacheDirResponseParams _PathServiceGetCacheDirResponseParamsFactory(String path) {
    var result = new PathServiceGetCacheDirResponseParams();
    result.path = path;
    return result;
  }

  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kPathService_getAppDataDir_name:
        var params = PathServiceGetAppDataDirParams.deserialize(
            message.payload);
        return _impl.getAppDataDir(_PathServiceGetAppDataDirResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kPathService_getAppDataDir_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kPathService_getFilesDir_name:
        var params = PathServiceGetFilesDirParams.deserialize(
            message.payload);
        return _impl.getFilesDir(_PathServiceGetFilesDirResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kPathService_getFilesDir_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      case kPathService_getCacheDir_name:
        var params = PathServiceGetCacheDirParams.deserialize(
            message.payload);
        return _impl.getCacheDir(_PathServiceGetCacheDirResponseParamsFactory).then((response) {
          if (response != null) {
            return buildResponseWithId(
                response,
                kPathService_getCacheDir_name,
                message.header.requestId,
                bindings.MessageHeader.kMessageIsResponse);
          }
        });
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  PathService get impl => _impl;
  set impl(PathService d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "PathServiceStub($superString)";
  }

  int get version => 0;
}

const int kUpdateService_notifyUpdateCheckComplete_name = 0;

const String UpdateServiceName =
      'activity::UpdateService';

abstract class UpdateService {
  void notifyUpdateCheckComplete();

}


class UpdateServiceProxyImpl extends bindings.Proxy {
  UpdateServiceProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  UpdateServiceProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  UpdateServiceProxyImpl.unbound() : super.unbound();

  static UpdateServiceProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For UpdateServiceProxyImpl"));
    return new UpdateServiceProxyImpl.fromEndpoint(endpoint);
  }

  String get name => UpdateServiceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "UpdateServiceProxyImpl($superString)";
  }
}


class _UpdateServiceProxyCalls implements UpdateService {
  UpdateServiceProxyImpl _proxyImpl;

  _UpdateServiceProxyCalls(this._proxyImpl);
    void notifyUpdateCheckComplete() {
      assert(_proxyImpl.isBound);
      var params = new UpdateServiceNotifyUpdateCheckCompleteParams();
      _proxyImpl.sendMessage(params, kUpdateService_notifyUpdateCheckComplete_name);
    }
  
}


class UpdateServiceProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  UpdateService ptr;
  final String name = UpdateServiceName;

  UpdateServiceProxy(UpdateServiceProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _UpdateServiceProxyCalls(proxyImpl);

  UpdateServiceProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new UpdateServiceProxyImpl.fromEndpoint(endpoint) {
    ptr = new _UpdateServiceProxyCalls(impl);
  }

  UpdateServiceProxy.fromHandle(core.MojoHandle handle) :
      impl = new UpdateServiceProxyImpl.fromHandle(handle) {
    ptr = new _UpdateServiceProxyCalls(impl);
  }

  UpdateServiceProxy.unbound() :
      impl = new UpdateServiceProxyImpl.unbound() {
    ptr = new _UpdateServiceProxyCalls(impl);
  }

  static UpdateServiceProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For UpdateServiceProxy"));
    return new UpdateServiceProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "UpdateServiceProxy($impl)";
  }
}


class UpdateServiceStub extends bindings.Stub {
  UpdateService _impl = null;

  UpdateServiceStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  UpdateServiceStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  UpdateServiceStub.unbound() : super.unbound();

  static UpdateServiceStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For UpdateServiceStub"));
    return new UpdateServiceStub.fromEndpoint(endpoint);
  }

  static const String name = UpdateServiceName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kUpdateService_notifyUpdateCheckComplete_name:
        var params = UpdateServiceNotifyUpdateCheckCompleteParams.deserialize(
            message.payload);
        _impl.notifyUpdateCheckComplete();
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  UpdateService get impl => _impl;
  set impl(UpdateService d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "UpdateServiceStub($superString)";
  }

  int get version => 0;
}

const int kUserFeedback_performHapticFeedback_name = 0;
const int kUserFeedback_performAuralFeedback_name = 1;

const String UserFeedbackName =
      'activity::UserFeedback';

abstract class UserFeedback {
  void performHapticFeedback(HapticFeedbackType type);
  void performAuralFeedback(AuralFeedbackType type);

}


class UserFeedbackProxyImpl extends bindings.Proxy {
  UserFeedbackProxyImpl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  UserFeedbackProxyImpl.fromHandle(core.MojoHandle handle) :
      super.fromHandle(handle);

  UserFeedbackProxyImpl.unbound() : super.unbound();

  static UserFeedbackProxyImpl newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For UserFeedbackProxyImpl"));
    return new UserFeedbackProxyImpl.fromEndpoint(endpoint);
  }

  String get name => UserFeedbackName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  String toString() {
    var superString = super.toString();
    return "UserFeedbackProxyImpl($superString)";
  }
}


class _UserFeedbackProxyCalls implements UserFeedback {
  UserFeedbackProxyImpl _proxyImpl;

  _UserFeedbackProxyCalls(this._proxyImpl);
    void performHapticFeedback(HapticFeedbackType type) {
      assert(_proxyImpl.isBound);
      var params = new UserFeedbackPerformHapticFeedbackParams();
      params.type = type;
      _proxyImpl.sendMessage(params, kUserFeedback_performHapticFeedback_name);
    }
  
    void performAuralFeedback(AuralFeedbackType type) {
      assert(_proxyImpl.isBound);
      var params = new UserFeedbackPerformAuralFeedbackParams();
      params.type = type;
      _proxyImpl.sendMessage(params, kUserFeedback_performAuralFeedback_name);
    }
  
}


class UserFeedbackProxy implements bindings.ProxyBase {
  final bindings.Proxy impl;
  UserFeedback ptr;
  final String name = UserFeedbackName;

  UserFeedbackProxy(UserFeedbackProxyImpl proxyImpl) :
      impl = proxyImpl,
      ptr = new _UserFeedbackProxyCalls(proxyImpl);

  UserFeedbackProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) :
      impl = new UserFeedbackProxyImpl.fromEndpoint(endpoint) {
    ptr = new _UserFeedbackProxyCalls(impl);
  }

  UserFeedbackProxy.fromHandle(core.MojoHandle handle) :
      impl = new UserFeedbackProxyImpl.fromHandle(handle) {
    ptr = new _UserFeedbackProxyCalls(impl);
  }

  UserFeedbackProxy.unbound() :
      impl = new UserFeedbackProxyImpl.unbound() {
    ptr = new _UserFeedbackProxyCalls(impl);
  }

  static UserFeedbackProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For UserFeedbackProxy"));
    return new UserFeedbackProxy.fromEndpoint(endpoint);
  }

  Future close({bool immediate: false}) => impl.close(immediate: immediate);

  int get version => impl.version;

  Future<int> queryVersion() => impl.queryVersion();

  void requireVersion(int requiredVersion) {
    impl.requireVersion(requiredVersion);
  }

  String toString() {
    return "UserFeedbackProxy($impl)";
  }
}


class UserFeedbackStub extends bindings.Stub {
  UserFeedback _impl = null;

  UserFeedbackStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [this._impl])
      : super.fromEndpoint(endpoint);

  UserFeedbackStub.fromHandle(core.MojoHandle handle, [this._impl])
      : super.fromHandle(handle);

  UserFeedbackStub.unbound() : super.unbound();

  static UserFeedbackStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For UserFeedbackStub"));
    return new UserFeedbackStub.fromEndpoint(endpoint);
  }

  static const String name = UserFeedbackName;



  Future<bindings.Message> handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    assert(_impl != null);
    switch (message.header.type) {
      case kUserFeedback_performHapticFeedback_name:
        var params = UserFeedbackPerformHapticFeedbackParams.deserialize(
            message.payload);
        _impl.performHapticFeedback(params.type);
        break;
      case kUserFeedback_performAuralFeedback_name:
        var params = UserFeedbackPerformAuralFeedbackParams.deserialize(
            message.payload);
        _impl.performAuralFeedback(params.type);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  UserFeedback get impl => _impl;
  set impl(UserFeedback d) {
    assert(_impl == null);
    _impl = d;
  }

  String toString() {
    var superString = super.toString();
    return "UserFeedbackStub($superString)";
  }

  int get version => 0;
}


