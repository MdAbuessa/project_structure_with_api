import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structur_project/assets_helper/app_fonts.dart';

class CustomIntroAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? icon;
  final String? centerText;
  final String? rightText;
  final VoidCallback? onSkipTap;
  final VoidCallback? onBackTap;

  const CustomIntroAppBar({
    super.key,
    this.icon,
    this.centerText,
    this.rightText,
    this.onSkipTap,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon != null
              ? Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      icon!,
                    ),
                    onPressed: onBackTap,
                  ),
                )
              : const SizedBox(width: 48),
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: centerText != null
                ? Text(centerText!, style: TextFontStyle.textStyle20LatoW600)
                : const SizedBox(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: rightText != null
                ? TextButton(
                    onPressed: onSkipTap,
                    child: Text(rightText!,
                        style: TextFontStyle.textStyle16LatoW400),
                  )
                : const SizedBox(width: 48),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
