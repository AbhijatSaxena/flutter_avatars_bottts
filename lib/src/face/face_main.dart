import '../bottt_element.dart';
import 'round-01.dart';
import 'round-02.dart';
import 'square-01.dart';
import 'square-02.dart';
import 'square-03.dart';
import 'square-04.dart';

class FaceCollection {
  final List<BotttElement> collection = [
    BotttElement(FaceType.Round01, round01Face),
    BotttElement(FaceType.Round02, round02Face),
    BotttElement(FaceType.Square01, square01Face),
    BotttElement(FaceType.Square02, square02Face),
    BotttElement(FaceType.Square03, square03Face),
    BotttElement(FaceType.Square04, square04Face),
  ];
}

enum FaceType {
  Round01,
  Round02,
  Square01,
  Square02,
  Square03,
  Square04,
}
