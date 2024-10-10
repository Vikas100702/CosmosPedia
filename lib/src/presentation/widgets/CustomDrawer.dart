import 'package:flutter/material.dart';

Drawer customDrawer(){
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
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
  );
}