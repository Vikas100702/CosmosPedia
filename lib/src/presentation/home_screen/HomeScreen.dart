import 'package:cosmospedia/src/presentation/widgets/CustomAppBar.dart';
import 'package:cosmospedia/src/presentation/widgets/CustomDrawer.dart';
import 'package:cosmospedia/src/presentation/widgets/CustomNavigationBar.dart';
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
          image: AssetImage("assets/background.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(), // CustomAppBar defined in a separate file
        endDrawer: customDrawer(),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            // Handle FAB press
          },
          child: Icon(Icons.home),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomNavigationBar(), // Custom bottom navigation bar
      ),
    );
  }
}
