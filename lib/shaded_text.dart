library shaded_text;

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

typedef ShadeBuilder = Widget Function(
    BuildContext context, String text, Color color);

class ShadedText extends StatelessWidget {
  final ShadeBuilder shadeBuilder;
  final String text;
  final Color shadeColor;
  final Color textColor;
  final double xTrans, yTrans;

  ShadedText({
    @required this.shadeBuilder,
    @required this.text,
    @required this.shadeColor,
    @required this.textColor,
    this.xTrans,
    this.yTrans,
  })  : assert(shadeBuilder != null),
        assert(text != null),
        assert(shadeColor != null),
        assert(textColor != null);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        Transform(
          child: shadeBuilder(context, text, shadeColor),
          transform:
              Matrix4.translationValues(xTrans ?? 4.0, yTrans ?? 4.0, 0.0),
        ),
        shadeBuilder(context, text, textColor),
      ],
    );
  }
}
