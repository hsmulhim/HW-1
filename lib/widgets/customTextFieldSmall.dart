
import 'package:flutter/material.dart';

class customTextFieldSmall extends StatelessWidget {
  const customTextFieldSmall({super.key,  required this.hint,  this.pfIcon});
  final String hint;
  final Icon? pfIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width /2,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: 
            TextFormField(
              
              maxLines: 1,
              
                    decoration: InputDecoration(
                      
                
                      prefixIcon:pfIcon ,
                      prefixIconColor: Colors.black,
                        hintText: hint,
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 170, 166, 166)),
                            borderRadius: BorderRadius.circular(15))),
                    
      ),
          
        
      ),
    );
  }
}