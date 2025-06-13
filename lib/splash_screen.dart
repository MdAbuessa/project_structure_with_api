import 'package:flutter/material.dart';
import 'package:structur_project/assets_helper/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
          child: Center(child: Image.asset(AppImages.logo_one))),
    );
  }
}
