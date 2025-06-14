import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:structur_project/features/auth/presentation/sign_in_screen.dart';
import 'package:structur_project/features/product/presentation/new_screen.dart';
import 'package:structur_project/features/product/presentation/product_screen.dart';

import '../loading.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();

  static Routes get instance => _routes;
  static const String loadingScreen = '/Loading';

  static const String newScreen = '/newScreen';
  static const String productScreen = '/productScreen';
  static const String signInScreen = '/signInScreen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loadingScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const Loading(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const Loading());

      case Routes.productScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ProductScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const ProductScreen());

      case Routes.signInScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const SignInScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SignInScreen());

      case Routes.newScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const NewScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const NewScreen());

      // case Routes.mainNavigationBar:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: MainNavigationBar(pageNum: args["pageNum"]),
      //           settings: settings,
      //         )
      //       : CupertinoPageRoute(
      //           builder: (context) =>
      //               MainNavigationBar(pageNum: args["pageNum"]),
      //         );

      default:
        return null;
    }
  }
}

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return FadeTransition(
              opacity: CurvedAnimation(parent: animation, curve: Curves.ease),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: widget,
    );
  }
}
