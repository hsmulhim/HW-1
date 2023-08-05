import 'package:flutter/material.dart';
import 'package:hm_1/screens/home_screen.dart';
import 'package:hm_1/widgets/customAppbar.dart';
import 'package:hm_1/widgets/customTextField.dart';


class loginScreen extends StatelessWidget {
   loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Login',),
      body: Column(
        children: [
         customTextField(labe: 'Email', hint: 'email',pfIcon: Icon(Icons.email_outlined),),
        ],
      ),

    );
  }
}