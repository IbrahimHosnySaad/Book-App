import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonText,
      this.onPressed,
      required this.textColor,
      required this.backgroundColor,
      this.borderRadius,
      this.textSize});
  final String buttonText;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final double? textSize;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(
          buttonText,
          style:
              Styles.textStyle18.copyWith(color: textColor, fontSize: textSize),
        ),
      ),
    );
  }
}
