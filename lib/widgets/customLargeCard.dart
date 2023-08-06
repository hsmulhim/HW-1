import 'package:flutter/material.dart';


class customLargeCard extends StatelessWidget {
  const customLargeCard({super.key, required this.LargImg, required this.SmallImg, required this.FirstText, required this.SecondText});
  final String LargImg;
  final String SmallImg;
  final String FirstText;
  final String SecondText;

  @override
  Widget build(BuildContext context) {
    return Card(
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    elevation: 8,
    shadowColor: Colors.grey,
    child: Padding(
      padding: const EdgeInsets.all(7.0),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(LargImg,height: 90,width: 90,fit: BoxFit.cover,)),
             Column(
              
              children: [
              Text(FirstText, maxLines:1,textAlign: TextAlign.left,style: 
        const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
        const SizedBox(height: 20,),
        Row(
       mainAxisAlignment: MainAxisAlignment.start,
          children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(10),
              child: Image.asset(SmallImg,height: 20,width: 20,fit: BoxFit.cover,)),
              const SizedBox(width: 7,),
              Text(SecondText, maxLines:1,textAlign: TextAlign.left,style: 
        const TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey)),
    
        ],)
             ],),
       IconButton(onPressed: (){},color: Colors.black ,icon: const Icon(Icons.arrow_forward_rounded))
      ],
      ),
    ),
    );
  }
}