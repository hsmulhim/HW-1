import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hm_1/widgets/customAppbar.dart';
import 'package:hm_1/widgets/customCatagoryButton.dart';
import 'package:hm_1/widgets/customLabel.dart';
import 'package:hm_1/widgets/customLargeCard.dart';
import 'package:hm_1/widgets/customSmallCard.dart';
import 'package:hm_1/widgets/customTextField.dart';

class searchScreen extends StatefulWidget {
   searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
final items = const [
    Icon(Icons.people, size: 30,),
    Icon(Icons.person, size: 30,),
    Icon(Icons.search_rounded, size: 30,),
    Icon(Icons.add, size: 30,),
    Icon(Icons.search_outlined, size: 30,),
  ];

  int index =1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Search',),

      bottomNavigationBar:CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        buttonBackgroundColor: Color(0xFF70B9BE),
        height: 60,
        backgroundColor: Colors.transparent,
       
       
      ), 

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 1,left: 4,right: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
        
              
             ],),
             customLabel(firstText: "popular Recepies", secondText: "view all"),
        
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 customSmallCard(path: 'assets/images/image-food.jpg', text: 'Salad & avocado'),
                 customSmallCard(path: 'assets/images/image-food.jpg', text: 'Salad & avocado'),
                 customSmallCard(path: 'assets/images/image-food.jpg', text: 'Salad & avocado'),
               ],
             ),
             customLabel(firstText: "Editor's Choice", secondText: "view all"),
        
             SingleChildScrollView(
              scrollDirection: Axis.vertical,
               child: Column(
                 children: [
                   customLargeCard(FirstText: 'Easy Home Made Recepie',SecondText: 'James spader',
                   LargImg: "assets/images/image-food.jpg",SmallImg: "assets/images/image-food.jpg",
                   ),
                   customLargeCard(FirstText: 'Easy Home Made Recepie',SecondText: 'James spader',
                   LargImg: "assets/images/image-food.jpg",SmallImg: "assets/images/image-food.jpg",
                   ),
                   
                 ]
               ),
             ),
        
            ],
          ),
        ),
      ),
    );
  }
}