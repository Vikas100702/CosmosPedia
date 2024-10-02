import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color titleColor;
  final FontWeight fontWeight;
  final double fontSize;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.titleColor,
    required this.fontWeight,
    required this.fontSize,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 10,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          title,
          style: TextStyle(
            color: titleColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
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
