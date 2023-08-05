import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hm_1/widgets/customAppbar.dart';
import 'package:hm_1/widgets/customTextField.dart';
import 'package:hm_1/widgets/customTextFieldSmall.dart';

class signUpScreen extends StatelessWidget {
  const signUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Sign Up',),
      body: SafeArea(child: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        customTextField(labe: "Username", hint: "Username",pfIcon: Icon(Icons.person),),
         
         Row(
          children: [
          
           Text('First Name', 
           textAlign: TextAlign.left ,
           style:  TextStyle(fontSize: 20, color: Colors.black,)),
           SizedBox(width: 90,),
           Text('Last Name', 
           textAlign: TextAlign.left ,
           style:  TextStyle(fontSize: 20, color: Colors.black,)),
         ],),
         Row(children: [
           customTextFieldSmall(hint: 'First',pfIcon: Icon(Icons.person)),
           customTextFieldSmall(hint: 'Last',pfIcon: Icon(Icons.person)),
          
         ],),
         
      
      ],)
      ),
    );
  }
}


