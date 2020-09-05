import 'dart:convert';

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
  Color color;
  EyeType eye;
  FaceType face;
  MouthType mouth;
  SideType side;
  TextureType texture;
  TopType top;

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

  Map<String, dynamic> toJson() => {
        'color': color.value,
        'eye': enumToJson(eye),
        'face': enumToJson(face),
        'mouth': enumToJson(mouth),
        'side': enumToJson(side),
        'texture': enumToJson(texture),
        'top': enumToJson(top),
      };

  Bottt.fromJson(Map<String, dynamic> json)
      : color = Color(json['color']),
        eye = enumFromJson(EyeType.values, json['eye']),
        face = enumFromJson(FaceType.values, json['face']),
        mouth = enumFromJson(MouthType.values, json['mouth']),
        side = enumFromJson(SideType.values, json['side']),
        texture = enumFromJson(TextureType.values, json['texture']),
        top = enumFromJson(TopType.values, json['top']);

  String serialize() {
    return json.encode(this.toJson());
  }

  Bottt.deSerialize(String _serializedBottt) {
    var _bottt = Bottt.fromJson(json.decode(_serializedBottt));
    color = _bottt.color;
    eye = _bottt.eye;
    face = _bottt.face;
    mouth = _bottt.mouth;
    side = _bottt.side;
    texture = _bottt.texture;
    top = _bottt.top;
  }

  Bottt copy() {
    return Bottt(
        color: this.color,
        eye: this.eye,
        face: this.face,
        mouth: this.mouth,
        side: this.side,
        texture: this.texture,
        top: this.top);
  }
}
