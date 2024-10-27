import 'package:flutter/material.dart';
import '../colors.dart';
import '../styles.dart';

class CustomSecondaryButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const CustomSecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          side: const BorderSide(
            color: Colours.secondaryButtonBorderColor,
            width: 1,
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.secondaryButtonTextStyle,
        ),
      ),
    );
  }
}
