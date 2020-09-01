import 'package:flutter/painting.dart';
import 'package:flutter_avatars_bottts/src/utilities.dart';
import 'package:random_color/random_color.dart';

import 'eyes/eyes_main.dart';
import 'face/face_main.dart';
import 'mouth/mouth_main.dart';
import 'sides/sides_main.dart';
import 'texture/texture_main.dart';
import 'top/top_main.dart';

class Bottt {
  final Color color;
  final EyeType eye;
  final FaceType face;
  final MouthType mouth;
  final SideType side;
  final TextureType texture;
  final TopType top;

  Bottt({
    this.color,
    this.eye,
    this.face,
    this.mouth,
    this.side,
    this.texture,
    this.top,
  });

  Bottt.random({
    Color color,
    EyeType eye,
    FaceType face,
    MouthType mouth,
    SideType side,
    TextureType texture,
    TopType top,
  }) : this(
          color: color ??
              RandomColor().randomColor(
                  colorSaturation: ColorSaturation.mediumSaturation),
          eye: eye ?? pickRandomItem(EyeType.values),
          face: face ?? pickRandomItem(FaceType.values),
          mouth: mouth ?? pickRandomItem(MouthType.values),
          side: side ?? pickRandomItem(SideType.values),
          texture: texture ?? pickRandomItem(TextureType.values),
          top: top ?? pickRandomItem(TopType.values),
        );
}
