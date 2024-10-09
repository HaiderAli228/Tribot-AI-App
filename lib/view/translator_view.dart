import 'package:flutter/material.dart';
import 'package:tribot/utils/app_colors.dart';
class TranslatorView extends StatefulWidget {
  const TranslatorView({super.key});

  @override
  State<TranslatorView> createState() => _TranslatorViewState();
}

class _TranslatorViewState extends State<TranslatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.themeColor,
        centerTitle: true,
        title: const Text(
          "Translator",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
