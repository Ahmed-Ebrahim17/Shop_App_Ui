import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/products.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Aristocratic Hand Bag',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text: 'Price\n',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(
                      text: '\$${product.price.toString()}',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                ]),
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                  child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                  height: 200,
                  fit: BoxFit.fitHeight,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
