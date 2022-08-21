import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.textSize,
      this.maxLines = 10,
      this.isTitle = false})
      : super(key: key);
  final String text;
  final Color color;
  final double textSize;
  bool isTitle = false;
  int maxLines = 10;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
          color: color,
          overflow: TextOverflow.ellipsis,
          fontSize: textSize,
          fontWeight: isTitle ? FontWeight.bold : FontWeight.normal),
    );
  }
}
