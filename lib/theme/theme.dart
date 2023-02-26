import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme defoultTextTheme = TextTheme(
  caption: GoogleFonts.dosis(fontWeight: FontWeight.normal, fontSize: 12),
  button: GoogleFonts.dosis(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.white),
  subtitle1: GoogleFonts.dosis(fontWeight: FontWeight.w400, fontSize: 16),
  subtitle2: GoogleFonts.dosis(fontWeight: FontWeight.normal, fontSize: 14),
  bodyText1: GoogleFonts.dosis(fontWeight: FontWeight.w400, fontSize: 16),
  bodyText2: GoogleFonts.dosis(fontWeight: FontWeight.w400, fontSize: 14),
  headline6: GoogleFonts.dosis(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: const Color(0xFF140b24),
  ),
  headline5: GoogleFonts.dosis(fontWeight: FontWeight.normal, fontSize: 24),
  headline4: GoogleFonts.dosis(fontWeight: FontWeight.w400, fontSize: 34),
  headline3: GoogleFonts.dosis(fontWeight: FontWeight.w400, fontSize: 48),
  headline2: GoogleFonts.dosis(fontWeight: FontWeight.w200, fontSize: 60),
  headline1: GoogleFonts.dosis(fontWeight: FontWeight.w200, fontSize: 96),
);

ElevatedButtonThemeData defoultElevatedButton = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  ),
);

class DefaultColorsPalette {
  static const MaterialColor defoultColorSwatch = MaterialColor(
    0xFF02735E,
    <int, Color>{
      50: Color(0xFFcce3de), //10%
      100: Color(0xffd7d4d8), //20%
      200: Color(0xffafaab1), //30%
      300: Color(0xff88808a), //40%
      400: Color(0xff605663), //50%
      500: Color(0xFF392C3D), //60%
      600: Color(0xFF2d2330), //70%
      700: Color(0xff221a24), //80%
      800: Color(0xff161118), //90%
      900: Color(0xff000000), //100%
    },
  );
  static const ColorScheme defoultColorScheme = ColorScheme.light(
    primary: Color(0xFF392C3D),
    primaryContainer: Color(0xffd7d4d8),
    onPrimary: Color(0xFFFFFFFF),
    onPrimaryContainer: Color(0xff161118),
    secondary: Color(0xFFbf4264),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFf2d9e0),
    tertiary: Color(0xFFd7c1aa),
    onTertiary: Color(0xFF564d44),
    onSecondaryContainer: Color(0xFF4c1a28),
    background: Color(0xFFf3ece5),
    surface: Color(0xFFFFFFFF),
    error: Colors.red,
  );
  static const PopupMenuThemeData defoultPopUpStyle = PopupMenuThemeData(
    color: Color(0xFFf2d9e0),
    elevation: 2,
  );
}
