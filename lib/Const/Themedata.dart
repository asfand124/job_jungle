// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme = ThemeData(
  primarySwatch: Colors.blue,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    titleLarge: GoogleFonts.oswald(
      fontSize: 15,
      color: Colors.black,
      fontStyle: FontStyle.italic,
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: 15,
      color: Colors.white,
    ),
    titleMedium: GoogleFonts.inter(
        fontSize: 15, color: Colors.black, fontStyle: FontStyle.normal),
    bodyMedium: GoogleFonts.merriweather(),
    displaySmall: GoogleFonts.pacifico(),
  ),
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.dark,
  ),
);
