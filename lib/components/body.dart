import 'package:flutter/material.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/screens/details/detalis_screen.dart';

import '../constants.dart';
import 'categories.dart';
import 'custom_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Categories(),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPaddin, vertical: 5),
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: kDefaultPaddin,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return CustomCard(
                      product: products[index],
                      onpress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ScreenDetalis(
                            Product: products[index],
                          );
                        }));
                      });
                }),
          ),
        ),
      ],
    );
  }
}
