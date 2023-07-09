import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/screens/details/components/details_screen_body.dart';

class ScreenDetalis extends StatelessWidget {
  ScreenDetalis({super.key, required this.Product});

  ProductModel Product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Product.color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Product.color,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/cart.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search.svg'),
          ),
        ],
      ),
      body: Body(product: Product),
    );
  }
}
