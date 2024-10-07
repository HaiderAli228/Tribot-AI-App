import 'package:flutter/material.dart';
import 'package:tribot/utils/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themeColor,
        centerTitle: true,
        title: const Text(
          "TriBot",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins"),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      image: const AssetImage(""),
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.1,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Chat Bot",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              color: Colors.black,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          "powered by openAI",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins"),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
