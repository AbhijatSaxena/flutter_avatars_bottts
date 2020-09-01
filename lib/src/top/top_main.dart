import '../bottt_element.dart';
import 'antenna-crooked.dart';
import 'antenna.dart';
import 'bulb-01-1.dart';
import 'bulb-01.dart';
import 'glowing-bulb-01.dart';
import 'glowing-bulb-02.dart';
import 'horns.dart';
import 'lights.dart';
import 'pyramid.dart';
import 'radar.dart';

class TopCollection {
  final List<BotttElement> collection = [
    BotttElement(TopType.Antenna, antennaTop),
    BotttElement(TopType.AntennaCrooked, antennaCrookedTop),
    BotttElement(TopType.Bulb01, bulb01Top),
    BotttElement(TopType.Bulb011, bulb011Top),
    BotttElement(TopType.GlowingBulb01, glowingBulb01Top),
    BotttElement(TopType.GlowingBulb02, glowingBulb02Top),
    BotttElement(TopType.Horns, hornsTop),
    BotttElement(TopType.Lights, lightsTop),
    BotttElement(TopType.Pyramid, pyramidTop),
    BotttElement(TopType.Radar, radarTop),
  ];
}

enum TopType {
  Antenna,
  AntennaCrooked,
  Bulb01,
  Bulb011,
  GlowingBulb01,
  GlowingBulb02,
  Horns,
  Lights,
  Pyramid,
  Radar,
}
