import '../bottt_element.dart';
import 'bite.dart';
import 'diagram.dart';
import 'grill-01.dart';
import 'grill-02.dart';
import 'grill-03.dart';
import 'smile-01.dart';
import 'smile-02.dart';
import 'square-01.dart';
import 'square-02.dart';

class MouthCollection {
  final List<BotttElement> collection = [
    BotttElement(MouthType.Bite, biteMouth),
    BotttElement(MouthType.Diagram, diagramMouth),
    BotttElement(MouthType.Grill01, grill01Mouth),
    BotttElement(MouthType.Grill02, grill02Mouth),
    BotttElement(MouthType.Grill03, grill03Mouth),
    BotttElement(MouthType.Smile01, smile01Mouth),
    BotttElement(MouthType.Smile02, smile02Mouth),
    BotttElement(MouthType.Square01, square01Mouth),
    BotttElement(MouthType.Square02, square02Mouth)
  ];
}

enum MouthType {
  Bite,
  Diagram,
  Grill01,
  Grill02,
  Grill03,
  Smile01,
  Smile02,
  Square01,
  Square02,
}
