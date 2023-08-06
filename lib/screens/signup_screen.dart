import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hm_1/screens/search_screen.dart';
import 'package:hm_1/widgets/customAppbar.dart';
import 'package:hm_1/widgets/customButtonWidget.dart';
import 'package:hm_1/widgets/customTextField.dart';
import 'package:hm_1/widgets/customTextFieldSmall.dart';

class signUpScreen extends StatelessWidget {
  const signUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Sign Up',),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          
          children: [
          customTextField(labe: "Username", hint: "Username",pfIcon: Icon(Icons.person),),
           
           Row(
            children: [
            SizedBox(width: 10,),
             Text('First Name', 
             textAlign: TextAlign.left ,
             style:  TextStyle(fontSize: 20, color: Colors.black,)),
             SizedBox(width: 80,),
             Text('Last Name', 
             textAlign: TextAlign.left ,
             style:  TextStyle(fontSize: 20, color: Colors.black,)),
           ],),
           Row(children: [
             customTextFieldSmall(hint: 'First',pfIcon: Icon(Icons.person)),
             customTextFieldSmall(hint: 'Last',pfIcon: Icon(Icons.person)),
            
           ],),
      
           customTextField(labe: 'Email Adress', hint: 'Enter Your Email Here',
             pfIcon: Icon(Icons.email_rounded),),
      
             customTextField(labe: 'Password', hint: 'Enter Your Password Here',
             pfIcon: Icon(Icons.lock_outline),sfIcon: Icon(Icons.visibility),),
               
               SizedBox(height: 20),
              CustomButtonElevated(bgColor: Colors.black,fgColor: Colors.white,
                      title: 'Continue',
                       onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => searchScreen()))},
                   ),
                    SizedBox(height: 20),
                   Text("By Contunuing you agree to the \n terms of service & privicy policy", 
                   textAlign: TextAlign.center,style: 
                      TextStyle(fontWeight: FontWeight.normal,fontSize: 16)),
        
        ],),
      )
      ),
    );
  }
}


