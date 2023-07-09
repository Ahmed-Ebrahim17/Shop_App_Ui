import 'package:flutter/material.dart';

class BuildOutlinedButton extends StatelessWidget {
  BuildOutlinedButton({super.key, this.icon, this.onpress});
  Icon? icon;
  VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 35,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13))),
        onPressed: onpress,
        child: icon,
      ),
    );
  }
}
