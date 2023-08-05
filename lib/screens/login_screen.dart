import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hm_1/screens/home_screen.dart';
import 'package:hm_1/widgets/customAppbar.dart';


class loginScreen extends StatelessWidget {
   loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Login',),
      body: Container(),

    );
  }
}