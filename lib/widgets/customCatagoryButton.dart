import 'package:flutter/material.dart';
import 'package:hm_1/screens/login_screen.dart';

class CustomCatagoryButton extends StatelessWidget {
  const CustomCatagoryButton({super.key, 
  required this.title, 
  required this.bgColor, 
  required this.fgColor, this.onPressed, required this.textColor,
   });
   
  final String title;
  final Color bgColor;
  final Color fgColor;
  final Color textColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width /3 -8,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        
      child: ElevatedButton(
        onPressed: onPressed,
                      
                    style:
                    ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      backgroundColor:bgColor,
                    foregroundColor:fgColor,
                    fixedSize:Size(MediaQuery.of(context).size.width -50 ,50),
                   
                    
                    ),
                     child: Text(title,style: TextStyle(color: textColor),
                     ),
            
                     ),
     ), );
  }
}