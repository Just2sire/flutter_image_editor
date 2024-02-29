import 'package:flutter/material.dart';
import 'package:image_edit/modules/text_info.dart';


class ImageText extends StatelessWidget {
  final TextInfo textInfo;
  const ImageText({super.key, required this.textInfo,});

  @override
  Widget build(BuildContext context) {
    final TextInfo(:text, :fontSize, :fontWeight, :fontStyle) = textInfo;
    return Text(text, style: TextStyle(
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
    ),);
  }
}