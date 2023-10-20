import 'package:flutter/material.dart';
import 'package:state_management/utilities/constants/themes_constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback doOnPressed;
  const CustomButton({
    Key? key,
    required this.text,
    required this.doOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: doOnPressed,
      style: OutlinedButton.styleFrom(
          backgroundColor: CColors.primaryButtonLightColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
      child: SizedBox(
        width: 100.0,
        height: 50.0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Center(
            child: Text(style: const TextStyle(color: CColors.black), text),
          ),
        ),
      ),
    );
  }
}
