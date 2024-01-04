import 'package:flutter/material.dart';

const Color kColorPrimary = Color(0xFF181A20);
const Color kColorLinear = Color(0xFFE21221);
const Color kColorDark2 = Color(0xFF1F222A);
const Color kColorDark3 = Color(0xFF35383F);
const Color kColorGreyScale500 = Color(0xFF9E9E9E);

class PrimaryFont {
  static String fontFamily = 'Urbanist';

  static TextStyle bold(double size) {
    return TextStyle(
        fontFamily: fontFamily, fontWeight: FontWeight.w700, fontSize: size);
  }

  static TextStyle normal(double size) {
    return TextStyle(
        fontFamily: fontFamily, fontWeight: FontWeight.w500, fontSize: size);
  }
}
