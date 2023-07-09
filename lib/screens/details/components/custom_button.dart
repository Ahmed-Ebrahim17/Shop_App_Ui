import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onpressed, required this.text, super.key, this.color});
  final String text;
  VoidCallback? onpressed;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
        onPressed: onpressed,
        child: Container(
          alignment: Alignment.center,
          child: Text(text),
        ));
  }
}
