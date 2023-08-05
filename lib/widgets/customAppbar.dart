import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
   CustomAppBar({super.key, required this.title});
  final String title;
@override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(icon: Icon(Icons.arrow_back),color: Colors.black,onPressed: ()=>Navigator.of(context).pop(),),
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(title,
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    );
  }
}