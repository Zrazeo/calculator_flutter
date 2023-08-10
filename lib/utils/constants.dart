import 'package:flutter/material.dart';

class Constants {
  static const String darkModeAssetPath = 'assets/Dark_mode.png';
  static const String lightModeAssetPath = 'assets/Light_Mode.png';
  static const String deleteIcon = 'assets/delete.svg';
  static const String plusMinusIcon = 'assets/plus_minus.svg';

  static const Color backgroundColorLight = Color(0xFFf1f2f3);
  static const Color backgroundColorDark = Color(0xFF17171C);

  static const Color calculationColor = Color(0xFF9E9E9E);
  static const Color numberDark = Color(0xFFFFFFFF);
  static const Color numberLight = Color(0xFF000000);

  static const Map<String, Color> colorMap = {
    'light_mode': Color(0xFFFFFFFF),
    'dark_mode': Color(0xFF2E2F38),
    'blue': Color(0xFF4B5EFC),
    'grey_light': Color(0xFFD2D3DA),
    'grey_dark': Color(0xFF4E505F),
  };

  static const double buttonWidth = 72;
  static const double buttonHeight = 32;
}
