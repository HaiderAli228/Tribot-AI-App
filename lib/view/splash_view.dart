import 'package:flutter/material.dart';
import 'package:tribot/utils/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgBodyColor,
      body: Center(
        child: Text("Splash Screen "),
      ),
    );
  }
}
