import 'package:flutter/material.dart';

import '../constants.dart';

class FelloText extends StatelessWidget {
  final String data;
  final Color? color;
  final double size;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? height;
  final double letterSpacing;

  const FelloText(
    this.data, {
    super.key,
    this.color = FelloColors.white,
    this.size = FelloFontSize.defaultSize,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.maxLines,
    this.height,
    this.letterSpacing = 0
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        height: height,
        letterSpacing: letterSpacing
      ),
    );
  }
}
