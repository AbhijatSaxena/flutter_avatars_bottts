import '../bottt_element.dart';
import 'camo-01.dart';
import 'camo-02.dart';
import 'circuits.dart';
import 'dirty-01.dart';
import 'dirty-02.dart';

class TextureCollection {
  final List<BotttElement> collection = [
    BotttElement(TextureType.None, () => ""),
    BotttElement(TextureType.Camo01, camo01Texture),
    BotttElement(TextureType.Camo02, camo02Texture),
    BotttElement(TextureType.Circuits, circuitsTexture),
    BotttElement(TextureType.Dirty01, dirty01Texture),
    BotttElement(TextureType.Dirty02, dirty02Texture)
  ];
}

enum TextureType {
  None,
  Camo01,
  Camo02,
  Circuits,
  Dirty01,
  Dirty02,
}
