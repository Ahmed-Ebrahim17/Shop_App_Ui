import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'build_outlined_button.dart';

class CounterCardAndFav extends StatefulWidget {
  const CounterCardAndFav({super.key});

  @override
  State<CounterCardAndFav> createState() => _CounterCardAndFavState();
}

class _CounterCardAndFavState extends State<CounterCardAndFav> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildOutlinedButton(
          icon: const Icon(
            Icons.remove,
            color: kTextColor,
          ),
          onpress: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        BuildOutlinedButton(
          icon: const Icon(
            Icons.add,
            color: kTextColor,
          ),
          onpress: () {
            setState(() {
              numOfItems++;
            });
          },
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
              color: Color(0xffff6464), shape: BoxShape.circle),
          child: SvgPicture.asset(
            'assets/icons/heart.svg',
          ),
        )
      ],
    );
  }
}
