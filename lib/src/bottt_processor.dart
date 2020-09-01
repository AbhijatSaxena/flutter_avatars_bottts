import 'bottt_element.dart';
import 'bottt.dart';
import 'eyes/eyes_main.dart';
import 'face/face_main.dart';
import 'mouth/mouth_main.dart';
import 'sides/sides_main.dart';
import 'texture/texture_main.dart';
import 'top/top_main.dart';
import 'utilities.dart';

class BotttProcessor {
  List<BotttElement> _eyeCollection;
  List<BotttElement> _faceCollection;
  List<BotttElement> _mouthCollection;
  List<BotttElement> _sideCollection;
  List<BotttElement> _textureCollection;
  List<BotttElement> _topCollection;

  BotttProcessor() {
    _eyeCollection = EyeCollection().collection;
    _faceCollection = FaceCollection().collection;
    _mouthCollection = MouthCollection().collection;
    _sideCollection = SideCollection().collection;
    _textureCollection = TextureCollection().collection;
    _topCollection = TopCollection().collection;
  }

  String _group(String content, int x, int y) {
    return '<g transform="translate($x, $y)">$content</g>';
  }

  String processSVG(Bottt _bottt) {
    var _sideSVG = pickOneItem(_sideCollection, _bottt.side);
    var _topSVG = pickOneItem(_topCollection, _bottt.top);
    var _faceSVG = pickOneItem(_faceCollection, _bottt.face);
    var _textureSVG = pickOneItem(_textureCollection, _bottt.texture);
    var _mouthSVG = pickOneItem(_mouthCollection, _bottt.mouth);
    var _eyeSVG = pickOneItem(_eyeCollection, _bottt.eye);

    return '''
      <svg viewBox="0 0 180 180" xmlns="http://www.w3.org/2000/svg" fill="none">',    
      ${_bottt.side != null ? _group(_sideSVG.content(_bottt.color), 0, 66) : ''},
      ${_bottt.top != null ? _group(_topSVG.content(_bottt.color), 41, 0) : ''},
      ${_bottt.face != null ? _group(_faceSVG.content(_bottt.color, _textureSVG.content()), 25, 44) : ''},
      ${_bottt.mouth != null ? _group(_mouthSVG.content(), 52, 124) : ''},
      ${_bottt.eye != null ? _group(_eyeSVG.content(), 38, 76) : ''},
      '</svg>
      ''';
  }
}
