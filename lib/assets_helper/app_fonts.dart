 import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structur_project/assets_helper/app_colors.dart';

class TextFontStyle {
  TextFontStyle._();

  /*custom font use anywhere*/

  static final textStyle20UrbanistW500 = GoogleFonts.urbanist(
      color: AppColor.cFFFFFF, fontSize: 30.sp, fontWeight: FontWeight.w500);

  static final textStyleur12banistsW400 = GoogleFonts.urbanist(
    color: AppColor.cFFFFFF,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    height: 1.50.h,
    letterSpacing: 0,
  );

  static final textStyle18OutfitW400 = GoogleFonts.outfit(
    color: AppColor.c191A1F,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    height: 1.33.h,
    letterSpacing: 0,
  );

  //..........new.................
  static final textStyle16LatoW600 = GoogleFonts.lato(
    color: AppColor.cFFFFFF,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    height: 1.33.h,
    letterSpacing: 0,
  );

  static final textStyle18LatoW600c000000 = GoogleFonts.lato(
    color: AppColor.c000000,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    height: 1.33.h,
    letterSpacing: 0,
  );

  static final textStyle16LatoW400 = GoogleFonts.lato(
    color: AppColor.c000000,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    height: 1.33.h,
    letterSpacing: 0,
  );

  static final textStyle14LatoW400 = GoogleFonts.lato(
    color: AppColor.c000000,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.33.h,
    letterSpacing: 0,
  );

  static final textStyle20LatoW600 = GoogleFonts.lato(
    color: AppColor.c000000,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    height: 1.00.h,
    letterSpacing: 0,
  );

  static final textStyle18LatoW700 = GoogleFonts.lato(
    color: AppColor.c000000,
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    height: 1.00.h,
    letterSpacing: 0,
  );

  static final textStyle24LatoW600 = GoogleFonts.lato(
    color: AppColor.c000000,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: 1.00.h,
    letterSpacing: 0,
  );

  static final textStylec6D767E16LatoW400 = GoogleFonts.lato(
    color: AppColor.c6D767E,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    height: 1.00.h,
    letterSpacing: 0,
  );

  static final textStylec108DF014LatoW400 = GoogleFonts.lato(
    color: AppColor.c108DF0,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.00.h,
    letterSpacing: 0,
  );

  static final textStyle14c999999LatoW500 = GoogleFonts.lato(
    color: AppColor.c999999,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.00.h,
    letterSpacing: 0,
  );
  static final textStyle20c000000LatoW600 = GoogleFonts.lato(
    color: AppColor.c000000,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    height: 1.00.h,
    letterSpacing: 0,
  );
}
