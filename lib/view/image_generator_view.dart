import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ImageGeneratorView extends StatefulWidget {
  const ImageGeneratorView({super.key});

  @override
  State<ImageGeneratorView> createState() => _ImageGeneratorViewState();
}

class _ImageGeneratorViewState extends State<ImageGeneratorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.themeColor,
        centerTitle: true,
        title: const Text(
          "Image Generator",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
