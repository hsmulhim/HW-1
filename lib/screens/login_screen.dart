import 'package:flutter/material.dart';
import 'package:hm_1/screens/home_screen.dart';
import 'package:hm_1/screens/signup_screen.dart';
import 'package:hm_1/widgets/customAppbar.dart';
import 'package:hm_1/widgets/customButtonWidget.dart';
import 'package:hm_1/widgets/customTextField.dart';


class loginScreen extends StatelessWidget {
   loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Login',),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(

          children: [
           customTextField(labe: 'Email Adress', hint: 'Enter Your Email Here',
           pfIcon: Icon(Icons.email_rounded),),
            
           customTextField(labe: 'Password', hint: 'Enter Your Password Here',
           pfIcon: Icon(Icons.lock_outline),sfIcon: Icon(Icons.visibility),),

           SizedBox(height: 18,),

           CustomButtonElevated(bgColor: Colors.black,fgColor: Colors.white,title: 'Login',
                     onPressed: () => {
                     null},
                 ),

                 SizedBox(height: 25,),

                 Text("Forgot Password?", style: 
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

                  Spacer(flex: 8,),

                    Text("or create new account", style: 
                    TextStyle(fontSize: 13,color: Colors.grey)),

                    Spacer(flex: 1,),

                    CustomButtonElevated(bgColor: Colors.black,fgColor: Colors.white,
                    title: 'Sign Up',
                     onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signUpScreen()))},
                 ),
                 
                 Spacer(flex: 1),
          ],
        ),
      ),

    );
  }
}