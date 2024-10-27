import 'package:flutter/material.dart';
import '../colors.dart';
import '../styles.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const CustomPrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: Colours.primaryGradient,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.primaryButtonTextStyle,
        ),
      ),
    );
  }
}
