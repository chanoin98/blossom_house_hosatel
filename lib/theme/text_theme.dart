import 'package:blossom_house_hosatel/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
 
  static TextStyle kLabelStyle = GoogleFonts.inter(
    color: AppColors.kSecondaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
  static TextStyle kPrimaryStyle = GoogleFonts.inter(
    color: AppColors.kSecondaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
  static TextStyle khintStyle = GoogleFonts.poppins(
    color: const Color(0xFFA9A9B7),
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  

  static TextTheme lightTextTheme = const TextTheme();
  static TextTheme darkTextTheme = const TextTheme();
}