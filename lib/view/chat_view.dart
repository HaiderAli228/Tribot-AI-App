import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.themeColor,
        centerTitle: true,
        title: const Text(
          "Chat",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
