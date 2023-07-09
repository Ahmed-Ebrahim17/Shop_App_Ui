import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/products.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, this.product, this.onpress});
  VoidCallback? onpress;
  ProductModel? product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: product!.color,
              ),
              child: Hero(
                tag: "${product!.id}",
                child: Image.asset(
                  product!.image,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
            child: Text(
              product!.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 2, bottom: 8),
            child: Text(
              '\$234',
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
