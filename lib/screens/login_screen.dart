import 'package:flutter/material.dart';
import 'package:hm_1/screens/search_screen.dart';
import 'package:hm_1/screens/signup_screen.dart';
import 'package:hm_1/widgets/customAppbar.dart';
import 'package:hm_1/widgets/customButtonWidget.dart';
import 'package:hm_1/widgets/customTextField.dart';


class loginScreen extends StatelessWidget {
   const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Login',),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(

          children: [
           const customTextField(labe: 'Email Adress', hint: 'Enter Your Email Here',
           pfIcon: Icon(Icons.email_rounded),),
            
           const customTextField(labe: 'Password', hint: 'Enter Your Password Here',
           pfIcon: Icon(Icons.lock_outline),sfIcon: Icon(Icons.visibility),),

           const SizedBox(height: 18,),

           CustomButtonElevated(bgColor: Colors.black,fgColor: Colors.white,title: 'Login',
                     onPressed: () => {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => searchScreen())),
                     },
                 ),

                 const SizedBox(height: 25,),

                 const Text("Forgot Password?", style: 
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),

                  const Spacer(flex: 8,),

                    const Text("or create new account", style: 
                    TextStyle(fontSize: 13,color: Colors.grey)),

                    const Spacer(flex: 1,),

                    CustomButtonElevated(bgColor: Colors.black,fgColor: Colors.white,
                    title: 'Sign Up',
                     onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const signUpScreen()))},
                 ),
                 
                 const Spacer(flex: 1),
          ],
        ),
      ),

    );
  }
}