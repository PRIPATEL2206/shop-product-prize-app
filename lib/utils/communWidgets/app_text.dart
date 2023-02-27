import 'package:flutter/material.dart';
import 'package:shop_product_price/utils/Dimantions/dimation.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;

  const AppText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        overflow: TextOverflow.fade,
        color: Colors.white,
        fontSize: Dimantions.fontSizeOf(fontSize ?? 16),
      ),
    );
  }
}
