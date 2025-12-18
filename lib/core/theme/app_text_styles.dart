import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._(); 

  
  static TextStyle h1 = GoogleFonts.inter(
    fontSize: 24.spMin,
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
  );

  static TextStyle h2 = GoogleFonts.inter(
    fontSize: 20.spMin,
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
  );

  static TextStyle h3 = GoogleFonts.inter(
    fontSize: 18.spMin,
    fontWeight: FontWeight.w700,
    color: AppColors.darkText,
  );

  static TextStyle semiBold14 = GoogleFonts.inter(
    fontSize: 14.spMin,
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
  );

  static TextStyle semiBold32 = GoogleFonts.inter(
    fontSize: 32.spMin,
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
  );

  /// ---------------- BODY TEXT ----------------
  static TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 16.spMin,
    fontWeight: FontWeight.w500,
    color: AppColors.darkText,
  );

  static TextStyle bodySemiBold = GoogleFonts.inter(
    fontSize: 16.spMin,
    fontWeight: FontWeight.w600,
    color: Color(0xFF979797),
  );

  static TextStyle bodyMedium = GoogleFonts.inter(
    fontSize: 14.spMin,
    fontWeight: FontWeight.w400,
    color: AppColors.greyText,
  );

static TextStyle body14 = GoogleFonts.inter(
    fontSize: 14.spMin,
    fontWeight: FontWeight.w500,
    color: AppColors.greyText,
  );


  static TextStyle bodySmall1o = GoogleFonts.inter(
    fontSize: 10.spMin,
    fontWeight: FontWeight.w500,
    color: AppColors.greyText,
  );

  static TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 12.spMin,
    fontWeight: FontWeight.w400,
    color: AppColors.greyText,
  );

  /// ---------------- BUTTON ----------------
  static TextStyle button = GoogleFonts.inter(
    fontSize: 16.spMin,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static TextStyle buttonSecondary = GoogleFonts.inter(
    fontSize: 14.spMin,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  /// ---------------- INPUT ----------------
  static TextStyle inputHint = GoogleFonts.inter(
    fontSize: 14.spMin,
    fontWeight: FontWeight.w400,
    color: AppColors.greyText,
  );

  static TextStyle inputText = GoogleFonts.inter(
    fontSize: 14.spMin,
    fontWeight: FontWeight.w500,
    color: AppColors.darkText,
  );

  /// ---------------- LINK / ACTION ----------------
  static TextStyle link = GoogleFonts.inter(
    fontSize: 14.spMin,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    decoration: TextDecoration.underline,
  );

  static TextStyle mutedLink = GoogleFonts.inter(
    fontSize: 14.spMin,
    fontWeight: FontWeight.w500,
    color: AppColors.greyText,
    decoration: TextDecoration.underline,
  );

  /// ---------------- BRAND ----------------
  static TextStyle brandTitle = GoogleFonts.inter(
    fontSize: 24.spMin,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    // letterSpacing: 1,
  );

  static TextStyle brandSubtitle = GoogleFonts.inter(
    fontSize: 20.spMin,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
}
