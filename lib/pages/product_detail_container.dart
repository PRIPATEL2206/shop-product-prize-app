import 'package:flutter/material.dart';
import 'package:shop_product_price/utils/CommunWidgets/app_text.dart';
import 'package:shop_product_price/utils/Dimantions/dimation.dart';

class ProductContainere extends StatelessWidget {
  const ProductContainere({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Dimantions.widthOf(20),
          vertical: Dimantions.heightOf(12)),
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(1)),
          boxShadow: [
            BoxShadow(blurRadius: 2, offset: Offset(0, 3)),
          ]),
      child: Row(
        children: const [
          Expanded(
            flex: 3,
            child: AppText(
              text: "Moong",
              fontSize: 20,
            ),
          ),
          Expanded(
            child: AppText(
              textAlign: TextAlign.end,
              text: "100",
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
