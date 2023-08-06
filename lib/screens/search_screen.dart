import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hm_1/widgets/customAppbar.dart';
import 'package:hm_1/widgets/customCatagoryButton.dart';
import 'package:hm_1/widgets/customTextField.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Search',),
      body: SafeArea(
        child: Column(
          children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               SizedBox( height: 50,
      width: MediaQuery.of(context).size.width -80,
      child: TextFormField(
              maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon:Icon(Icons.search) ,
                      prefixIconColor: Colors.black,
                        hintText: 'search',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 170, 166, 166)),
                            borderRadius: BorderRadius.circular(15))),
                    
      ),
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color(0xFF70B9BE)),
        
        height: 50,
        width: 50,
        child: IconButton(onPressed: (){}, icon: Icon(Icons.filter_list) ,color:Colors.white )
        ),
            ],
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CustomCatagoryButton(title: 'Breakfast', bgColor: Color(0xFF70B9BE) ,fgColor: Colors.white,onPressed: (){},textColor: Colors.white,),
            CustomCatagoryButton(title: 'Lunch', bgColor: Colors.black ,fgColor: Colors.white,textColor: Colors.black,),
            CustomCatagoryButton(title: 'Dinnir', bgColor: Colors.black,fgColor: Colors.black,textColor: Colors.black,),
           ],)
          ],
        ),
      ),
    );
  }
}