import '../bottt_element.dart';
import 'antenna-01.dart';
import 'antenna-02.dart';
import 'cables-01.dart';
import 'cables-02.dart';
import 'round.dart';
import 'square-assymetric.dart';
import 'square.dart';

class SideCollection {
  final List<BotttElement> collection = [
    BotttElement(SideType.Antenna01, antenna01Side),
    BotttElement(SideType.Antenna02, antenna02Side),
    BotttElement(SideType.Cables01, cables01Side),
    BotttElement(SideType.Cables02, cables02Side),
    BotttElement(SideType.Round, roundSide),
    BotttElement(SideType.Square, squareSide),
    BotttElement(SideType.SquareAssymetric, squareAssymetricSide),
  ];
}

enum SideType {
  Antenna01,
  Antenna02,
  Cables01,
  Cables02,
  Round,
  Square,
  SquareAssymetric,
}
