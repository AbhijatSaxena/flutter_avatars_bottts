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
      child: Column(
        children: [
          CircleAvatar(
            radius: 90,
            child: CircleAvatar(
              radius: 85,
              backgroundColor: Color.fromARGB(255, 100, 100, 100),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: SvgPicture.string(_svgString),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
