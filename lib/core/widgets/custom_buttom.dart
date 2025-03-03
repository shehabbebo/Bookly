import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.backgroudColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
  });
  final String text;
  final Color backgroudColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroudColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            )),
        child: Text(text,
            style: styles.TextStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize,
            )),
      ),
    );
  }
}
