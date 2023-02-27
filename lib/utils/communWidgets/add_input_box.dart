import 'package:flutter/material.dart';
import 'package:shop_product_price/utils/Dimantions/dimation.dart';

class AddInputBox extends StatelessWidget {
  final String? hintText;
  final TextInputType? textInputType;
  final TextEditingController? textEditingController;

  const AddInputBox(
      {super.key,
      this.hintText,
      this.textEditingController,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Dimantions.widthOf(3), vertical: Dimantions.heightOf(5)),
      child: TextField(
        keyboardType: textInputType,
        controller: textEditingController,
        style: TextStyle(fontSize: Dimantions.fontSizeOf(18)),
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: Dimantions.widthOf(20)),
            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(Dimantions.widthOf(20))))),
      ),
    );
  }
}
