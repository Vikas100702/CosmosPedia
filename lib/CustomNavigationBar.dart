import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget{
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();

}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(

      height: 60,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.event)),
          IconButton(onPressed: (){}, icon: Icon(Icons.rocket)),
          IconButton(onPressed: (){}, icon: Icon(Icons.note_alt)),
          IconButton(onPressed: (){}, icon: Icon(Icons.image)),

        ],
      ),

    );
  }
}
