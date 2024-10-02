import 'package:cosmospedia/CustomAppBar.dart';
import 'package:cosmospedia/CustomNavigationBar.dart';
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
          image: AssetImage(
            "assets/background.png",
          ),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(),
            floatingActionButton: FloatingActionButton(
              // isExtended: true,
              shape: CircleBorder(),
              onPressed: (){},
              child: Icon(Icons.home,),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: CustomNavigationBar(),
          )
        ],
      ),
    );
  }
}
