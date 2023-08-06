import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class customLabel extends StatelessWidget {
  const customLabel({super.key, required this.firstText, required this.secondText});

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Text(firstText, textAlign: TextAlign.left,style: 
      TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),

      Text(secondText, textAlign: TextAlign.left,style: 
      TextStyle(fontWeight: FontWeight.bold,fontSize: 15 ,color: Color(0xFF70B9BE),)),

    ],);
  }
}