import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:structur_project/assets_helper/app_colors.dart';
import 'package:structur_project/assets_helper/app_lottie.dart';

Widget loadingIndicatorCircle({
  required BuildContext context,
  Color? color,
  double? size,
}) {
  double loaderSize = 100.sp;
  return DotLottieLoader.fromAsset(AppLottie.loading,
      frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
    if (dotlottie != null) {
      return Center(
        child: Container(
          decoration: BoxDecoration(
              color: AppColor.primary_color,
              borderRadius: BorderRadius.circular(8.r)),
          child: Lottie.memory(dotlottie.animations.values.single,
              height: loaderSize, width: loaderSize),
        ),
      );
    } else {
      return Container();
    }
  });
}
