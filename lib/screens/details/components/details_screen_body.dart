import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';

import 'color_and_size.dart';
import 'counter_card_and_fav.dart';
import 'custom_button.dart';

class Body extends StatelessWidget {
  Body({super.key, required this.product});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: kDefaultPaddin * 3.5,
                      left: kDefaultPaddin,
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          product.description,
                          style:
                              const TextStyle(color: kTextColor, height: 1.5),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const CounterCardAndFav(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 45,
                              margin: const EdgeInsets.only(right: 16, top: 20),
                              padding: const EdgeInsets.all(8),
                              width: 53,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: product.color,
                                  ),
                                  borderRadius: BorderRadius.circular(18)),
                              child: SvgPicture.asset(
                                'assets/icons/add_to_cart.svg',
                                color: product.color,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  margin:
                                      const EdgeInsets.only(right: 10, top: 20),
                                  height: 50,
                                  child: CustomButton(
                                    color: product.color,
                                    text: 'Buy now'.toUpperCase(),
                                    onpressed: () {},
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
