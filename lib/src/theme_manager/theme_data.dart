import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarang/src/theme_manager/color_manager.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
      scaffoldBackgroundColor: ColorManager.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.primary,
        elevation: 0.0,
      ),
      fontFamily: GoogleFonts.poppins().toString());
}
