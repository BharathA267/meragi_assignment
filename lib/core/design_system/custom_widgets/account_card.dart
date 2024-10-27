import 'package:flutter/material.dart';
import 'package:meragi/core/design_system/strings.dart';

import '../colors.dart';
import '../styles.dart';

class AccountCard extends StatelessWidget {
  final Widget? image;
  final String? name;
  final VoidCallback? onTap;

  const AccountCard({
    Key? key,
    this.image,
    this.name,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colours.textFieldBorderColour),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey.shade200,
              child: image ??
                  const Icon(Icons.add, size: 30, color: Colors.black), // If image is null, show add icon
            ),
            const SizedBox(height: 8),
            Text(
              name ?? addAccount,
              style: AppTextStyles.nameTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
