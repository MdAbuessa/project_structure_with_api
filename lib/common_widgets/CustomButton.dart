import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structur_project/assets_helper/app_colors.dart';
import 'package:structur_project/assets_helper/app_fonts.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final VoidCallback? onCall;

  const CustomButton({super.key, required this.btnText, this.onCall});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCall,
      child: Container(
        height: 56.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(41.r), color: AppColor.c108DF0),
        child: Center(
          child: Text(btnText,
              textAlign: TextAlign.center,
              style: TextFontStyle.textStyle16LatoW600),
        ),
      ),
    );
  }
}
