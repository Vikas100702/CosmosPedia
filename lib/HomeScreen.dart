import 'package:cosmospedia/CustomAppBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
        image: AssetImage("assets/background.png",),
      )),
      child: Column(
        children: [
          CustomAppBar(
            title: "CosmosPedia",
            titleColor: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )
        ],
      ),
    );
  }
}
