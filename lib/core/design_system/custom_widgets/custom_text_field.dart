import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meragi/core/design_system/colors.dart';

import '../styles.dart';

class TrimLeadingSpacesFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String trimmedText = newValue.text.replaceFirst(RegExp(r'^\s+'), '');
    return newValue.copyWith(
      text: trimmedText,
      selection: TextSelection.collapsed(offset: trimmedText.length),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String title;
  final String? initialValue;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final FormFieldValidator<String?>? validator;
  final bool? obscureText;

  const CustomTextField({
    super.key,
    required this.title,
    this.initialValue,
    this.suffixIcon,
    this.onChanged,
    this.controller,
    this.validator,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.boldTextStyle),
        const SizedBox(height: 4),
        TextFormField(
          initialValue: initialValue,
          controller: controller,
          autovalidateMode: AutovalidateMode.disabled,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: Colours.textFieldBorderColour, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colours.textFieldBorderColour, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colours.textFieldBorderColour, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.red // set error colour as per designs
                  ,
                  width: 1),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            filled: true,
            fillColor: Colors.transparent,
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.all(16),
          ),
          style: AppTextStyles.primaryTextStyle,
          onChanged: onChanged,
          validator: validator,
          obscureText: obscureText ?? false,
        ),
      ],
    );
  }
}
