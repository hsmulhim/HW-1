import 'package:flutter/material.dart';
import 'package:hm_1/screens/login_screen.dart';

class CustomButtonElevated extends StatelessWidget {
  const CustomButtonElevated({super.key, 
  required this.title, 
  required this.bgColor, 
  required this.fgColor, this.onPressed,
   });
   
  final String title;
  final Color bgColor;
  final Color fgColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
                    
                  style:
                  ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    backgroundColor:bgColor,
                  foregroundColor:fgColor,
                  fixedSize:Size(MediaQuery.of(context).size.width -50 ,50),
                 
                  
                  ),
                   child: Text(title,style: TextStyle(color: Colors.white,)),
          
                   );
  }
}