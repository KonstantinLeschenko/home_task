// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const COLOR_PRIMARY = Colors.deepOrangeAccent;
const COLOR_ACCENT = Colors.orange;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: COLOR_PRIMARY,
  appBarTheme: const AppBarTheme(backgroundColor: COLOR_PRIMARY),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.lato(fontSize: 32, fontWeight: FontWeight.bold),
    displayMedium: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.w600),
    displaySmall: GoogleFonts.lato(fontSize: 18),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
      backgroundColor: MaterialStateProperty.all<Color>(COLOR_ACCENT),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: COLOR_PRIMARY,
  appBarTheme: const AppBarTheme(backgroundColor: COLOR_PRIMARY),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.lato(fontSize: 32, fontWeight: FontWeight.bold),
    displayMedium: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.w600),
    displaySmall: GoogleFonts.lato(fontSize: 18),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
      backgroundColor: MaterialStateProperty.all<Color>(COLOR_ACCENT),
    ),
  ),
);
