import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      excludeHeaderSemantics: true,
      elevation: 0,
      backgroundColor: Colors.white.withAlpha(0),
      foregroundColor: Colors.white.withAlpha(0),
      forceMaterialTransparency: true,
      automaticallyImplyLeading: false,
      title: Text(
        "CosmosPedia",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {
                // Handle notification icon tap
              },
            ),
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {
                  Scaffold.of(context).openEndDrawer(); // Open the end drawer
                },
              ),
            ),
            SizedBox(width: 16), // Add padding to the right for better spacing
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
