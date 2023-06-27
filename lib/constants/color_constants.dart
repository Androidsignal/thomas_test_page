import 'package:flutter/material.dart';

class ColorConstants {
  static ColorConstants? _instance;
  final Color whiteColor = Colors.white;
  final Color greenColor = const Color(0xFF319795);
  final Color blueColor = const Color(0xFF3182CE);
  final Color gradientColor1 = const Color(0xFFEBF4FF);
  final Color selectedTabColor = const Color(0xFF81E6D9);
  final Color borderColor = const Color(0xFFCBD5E0);
  final Color gradientColor2 = const Color(0xFFE6FFFA);
  final Color textColor = const Color(0xFF2D3748);
  final Color contentTextColor = const Color(0xFF718096);

  ColorConstants._();

  static ColorConstants getInstance() {
    _instance ??= ColorConstants._(); // Create instance if it doesn't exist
    return _instance!;
  }
}
