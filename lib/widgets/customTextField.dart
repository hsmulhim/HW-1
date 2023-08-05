import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class customTextField extends StatelessWidget {
  const customTextField({super.key, required this.labe, required this.hint,  this.sfIcon,  this.pfIcon});
  final String hint;
  final String labe;
  final Icon? sfIcon;
  final Icon? pfIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labe, 
                       textAlign: TextAlign.left ,style:  TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold)),
          TextFormField(
            maxLines: 1,
            
                  decoration: InputDecoration(
                    suffixIcon:sfIcon ,
                    suffixIconColor: Colors.black,
                    prefixIcon:pfIcon ,
                    prefixIconColor: Colors.black,
                      hintText: hint,
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  
    ),
        ],
      ),
    );
  }
}