import '../bottt_element.dart';
import 'bulging.dart';
import 'dizzy.dart';
import 'eva.dart';
import 'frame-1.dart';
import 'frame-2.dart';
import 'glow.dart';
import 'hal.dart';
import 'happy.dart';
import 'hearts.dart';
import 'round-frame-01.dart';
import 'round-frame-02.dart';
import 'round.dart';
import 'sensor.dart';
import 'shade-01.dart';

class EyeCollection {
  final List<BotttElement> collection = [
    BotttElement(EyeType.Bulging, bulgingEyes),
    BotttElement(EyeType.Dizzy, dizzyEyes),
    BotttElement(EyeType.Eva, evaEyes),
    BotttElement(EyeType.Frame01, frame01Eyes),
    BotttElement(EyeType.Frame02, frame02Eyes),
    BotttElement(EyeType.Glow, glowEyes),
    BotttElement(EyeType.Hal, halEyes),
    BotttElement(EyeType.Happy, happyEyes),
    BotttElement(EyeType.Hearts, heartsEyes),
    BotttElement(EyeType.Round, roundEyes),
    BotttElement(EyeType.RoundFrame01, roundFrame01Eyes),
    BotttElement(EyeType.RoundFrame02, roundFrame02Eyes),
    BotttElement(EyeType.Sensor, sensorEyes),
    BotttElement(EyeType.Shade01, shade01Eyes)
  ];
}

enum EyeType {
  Bulging,
  Dizzy,
  Eva,
  Frame01,
  Frame02,
  Glow,
  Hal,
  Happy,
  Hearts,
  Round,
  RoundFrame01,
  RoundFrame02,
  Sensor,
  Shade01,
}
