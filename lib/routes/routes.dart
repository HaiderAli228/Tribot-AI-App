import 'package:flutter/material.dart';
import 'package:tribot/routes/routes_name.dart';
import 'package:tribot/view/chat_view.dart';
import 'package:tribot/view/image_generator_view.dart';
import 'package:tribot/view/splash_view.dart';
import 'package:tribot/view/translator_view.dart';

import '../view/home_view.dart';

class Routes {
  static Route<dynamic> generatedRoutes(RouteSettings setting) {
    switch (setting.name) {
      case RoutesName.homeScreen:
        return _createRoute(const HomeView());
      case RoutesName.chatScreen:
        return _createRoute(const ChatView());
      case RoutesName.imageGeneratorScreen:
        return _createRoute(const ImageGeneratorView());
      case RoutesName.translatorScreen:
        return _createRoute(const TranslatorView());
      case RoutesName.splashScreen:
        return _createRoute(const SplashView());
      default:
        return _createRoute(
          const Scaffold(
            body: Center(child: Text("Route Not Found")),
          ),
        );
    }
  }

  // Helper function to create a smooth animated route
  static PageRouteBuilder _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.easeInOut; // Smooth curve for both entry and exit

        var slideAnimation = Tween<Offset>(
          begin: const Offset(0.0, 1.0), // Slide from bottom to top
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: animation,
          curve: curve,
        ));

        var fadeAnimation = Tween<double>(
          begin: 0.0, // Fade from transparent
          end: 1.0, // To fully visible
        ).animate(CurvedAnimation(
          parent: animation,
          curve: curve,
        ));

        return FadeTransition(
          opacity: fadeAnimation,
          child: SlideTransition(
            position: slideAnimation,
            child: child,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 700), // Smooth speed
      reverseTransitionDuration:
          const Duration(milliseconds: 700), // Smooth for pop too
    );
  }
}
