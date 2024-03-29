import 'package:flutter/material.dart';

class TextInfo {
  String text;
  double left;
  double top;
  Color textColor;
  FontWeight fontWeight;
  FontStyle fontStyle;
  double fontSize;
  TextAlign textAlign;

  TextInfo({
    required this.text,
    required this.left,
    required this.top,
    required this.textColor,
    required this.fontWeight,
    required this.fontStyle,
    required this.fontSize,
    required this.textAlign,
  });
}
