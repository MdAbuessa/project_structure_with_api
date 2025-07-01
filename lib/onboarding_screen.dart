import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structur_project/assets_helper/app_fonts.dart';
import 'package:structur_project/assets_helper/app_icons.dart';
import 'package:structur_project/assets_helper/app_images.dart';
import 'package:structur_project/common_widgets/CustomButton.dart';
import 'package:structur_project/common_widgets/custom_app_bar.dart';
import 'package:structur_project/helpers/all_routes.dart';
import 'package:structur_project/helpers/loading.dart';
import 'package:structur_project/helpers/navigation_service.dart';
import 'package:structur_project/helpers/ui_helpers.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.bg_image),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            UIHelper.verticalSpace(16.h),
            CustomIntroAppBar(
              //icon: AppIcons.back_Icon,
              rightText: 'Skip',
            ),
            UIHelper.verticalSpace(40.h),
            Image.asset(
              AppImages.baby_one,
              height: 230.h,
            ),
            UIHelper.verticalSpace(39.h),
            SvgPicture.asset(AppIcons.dot_one),
            UIHelper.verticalSpace(48.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your Personalized Map Powered by You',
                style: TextFontStyle.textStyle24LatoW600,
                textAlign: TextAlign.center,
              ),
            ),
            UIHelper.verticalSpace(50.h),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                btnText: 'Next',
                onCall: () {
                  // Show loading dialog before navigation if needed
                  showDialog(
                    context: NavigationService.context,
                    builder: (context) => loadingIndicatorCircle(
                      context: context,
                    ),
                  );
                  NavigationService.navigateTo(Routes.welcomeScreen);
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
