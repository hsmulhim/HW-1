import 'package:flutter/material.dart';
import 'package:hm_1/screens/login_screen.dart';
import 'package:hm_1/widgets/customButtonWidget.dart';
import 'package:hm_1/widgets/imageWidget.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF70B9BE),
      appBar: AppBar(backgroundColor: const Color(0xFF70B9BE),elevation: 0,),
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
        children: [
          Expanded(
            flex: 2,
            child: ImageWidget(path: 'assets/images/image-hm1.JPG',size: MediaQuery.of(context).size.width),),

          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Colors.white,borderRadius:
               BorderRadius.circular(15)),
              
            
              width:  MediaQuery.of(context).size.width,
             clipBehavior: Clip.antiAlias,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: [
                  const Text("Let's Start Cooking", style: 
                  TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),

                   const Padding(
                     padding: EdgeInsets.all(10.0),
                     child: Text("Cooking based on the food recepies you find and the food you love", 
                     textAlign: TextAlign.center ,style:  TextStyle(fontSize: 16, color: Colors.grey)),
                   ),

                   CustomButtonElevated(bgColor: Colors.black,fgColor: Colors.white,title: 'Get Started',
                   onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => loginScreen()))}
               ),
                ],
            
              ),
            )),
        ],
      )),
    );
  }
}