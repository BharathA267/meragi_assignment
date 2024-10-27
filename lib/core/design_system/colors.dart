import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Colours {
  static const textFieldBorderColour = Color(0xFFC1A28B);
  static const Color textColour = Color(0xFF3C2C20);

  static const Color secondaryButtonBorderColor = Color(0xFFAFA2C3);
  static const Color secondaryButtonTextColor = Color(0xFF3E334E);

  static const primaryGradient = LinearGradient(
    colors: [ Color(0xFFA03CEA),Color(0xFFFB6564)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const disabledButtonColor = Color(0xffC8D4DD);
}
