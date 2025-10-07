import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  final Color orange = const Color(0xFFFF7622);
  final Color white = Colors.white;
  final Color blackish = const Color(0xFF32343E);
}

class AppTheme {
  ThemeData get lightTheme => ThemeData(
    primaryColor: AppColors().orange,
    secondaryHeaderColor: AppColors().blackish,
    scaffoldBackgroundColor: AppColors().white,
    textTheme: GoogleFonts.senTextTheme(
      const TextTheme(
        bodySmall: TextStyle(fontSize: 13),
        bodyMedium: TextStyle(fontSize: 16),
        bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );

  ThemeData get darkTheme => ThemeData(
    primaryColor: AppColors().orange,
    secondaryHeaderColor: AppColors().blackish,
    scaffoldBackgroundColor: AppColors().white,
    textTheme: GoogleFonts.senTextTheme(
      const TextTheme(
        bodySmall: TextStyle(fontSize: 13),
        bodyMedium: TextStyle(fontSize: 16),
        bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
