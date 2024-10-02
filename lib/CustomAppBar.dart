import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 10,
        backgroundColor: Colors.white.withAlpha(0),
        // foregroundColor: Colors.transparent,
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
          Icon(
            Icons.menu,
            color: Colors.white,
          )
        ],
    );
  }
}
