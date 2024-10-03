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
          image: AssetImage("assets/background.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(), // CustomAppBar defined in a separate file
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
             /* DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text(
                  'End Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),*/
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Account Settings'),
                onTap: () {
                  // Handle Home tap
                },
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Language'),
                onTap: () {
                  // Handle Settings tap
                },
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text('Terms & Conditions'),
                onTap: () {
                  // Handle Settings tap
                },
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Privacy Policies'),
                onTap: () {
                  // Handle Settings tap
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help & Support '),
                onTap: () {
                  // Handle Settings tap
                },
              ),
              ListTile(
                leading: Icon(Icons.logout_sharp),
                title: Text('Logout'),
                onTap: () {
                  // Handle Settings tap
                },
              ),
            ],
          ),
        ),
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
