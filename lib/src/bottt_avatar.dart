import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bottt_processor.dart';
import 'bottt.dart';

class BotttAvatar extends StatelessWidget {
  final Bottt bottt;

  BotttAvatar(this.bottt);

  @override
  Widget build(BuildContext context) {
    String _svgString = "";

    var _botttProcessor = BotttProcessor();

    if (this.bottt != null) {
      _svgString = _botttProcessor.processSVG(this.bottt);
    }

    return Visibility(
      visible: this.bottt != null,
      child: SvgPicture.string(_svgString),
    );
  }
}
