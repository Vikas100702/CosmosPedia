import 'package:flutter/cupertino.dart';
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
      color: Colors.black38,

      height: 60,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.event) , color: CupertinoColors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.cloud) ,color: CupertinoColors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.note_alt),color: CupertinoColors.white),
          IconButton(onPressed: (){}, icon: Icon(Icons.image),color: CupertinoColors.white),

        ],
      ),

    );
  }
}
