// ignore_for_file: public_member_api_docs

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  AppColor._();

  static FlexColorScheme windowColorScheme = FlexColorScheme(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff6333ff),
      onPrimary: Color(0xffeef5f8),
      secondary: Color(0xff0eb56f),
      onSecondary: Colors.pink,
      error: Color(0xffEB4747),
      onError: Colors.yellow,
      background: Color(0xff1a1925),
      onBackground: Colors.red,
      surface: Color(0xff1d1d29),
      onSurface: Colors.red,
    ),
    useMaterial3: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.notoSans().fontFamily,
  );
}
