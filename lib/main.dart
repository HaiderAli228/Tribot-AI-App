import 'package:flutter/material.dart';
import 'package:tribot/routes/routes.dart';
import 'package:tribot/routes/routes_name.dart';
import 'package:tribot/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.themeColor),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.homeScreen,
      onGenerateRoute: Routes.generatedRoutes,
    );
  }
}
