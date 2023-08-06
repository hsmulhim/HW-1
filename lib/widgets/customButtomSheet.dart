import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hm_1/widgets/customCatagoryButton.dart';

class ButtomSheet extends StatelessWidget {
  const ButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
        Text("Filter", textAlign: TextAlign.left,style: 
        TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
        Row(children: [Text("Catagory", textAlign: TextAlign.left,style: 
        TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),],),
        Row(children: [
          CustomCatagoryButton(title: 'Breakfast', bgColor: Color(0xFF70B9BE) ,fgColor: Colors.white,onPressed: (){},textColor: Colors.white,),
          CustomCatagoryButton(title: 'Lunch', bgColor: Colors.black ,fgColor: Colors.white,textColor: Colors.black,),
          CustomCatagoryButton(title: 'Dinnir', bgColor: Colors.black,fgColor: Colors.black,textColor: Colors.black,),
        ],),
    
         Row(children: [Text("Type", textAlign: TextAlign.left,style: 
        TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),],),
        Row(children: [
          CustomCatagoryButton(title: 'Salad', bgColor: Colors.black ,fgColor: Colors.white,textColor: Colors.black,),
          CustomCatagoryButton(title: 'Egg', bgColor: Color(0xFF70B9BE) ,fgColor: Colors.white,onPressed: (){},textColor: Colors.white,),
          CustomCatagoryButton(title: 'Cakes', bgColor: Colors.black ,fgColor: Colors.white,textColor: Colors.black,),
        ],),
        Row(children: [
          CustomCatagoryButton(title: 'Salad', bgColor: Color(0xFF70B9BE) ,fgColor: Colors.white,onPressed: (){},textColor: Colors.white,),
          CustomCatagoryButton(title: 'Egg', bgColor: Colors.black ,fgColor: Colors.white,textColor: Colors.black,),
          CustomCatagoryButton(title: 'Cakes', bgColor: Colors.black,fgColor: Colors.black,textColor: Colors.black,),
        ],),
      ],),
    );
  }
}