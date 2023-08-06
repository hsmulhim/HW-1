import 'package:flutter/material.dart';


class customSmallCard extends StatelessWidget {
  const customSmallCard({super.key, required this.path, required this.text});
  final String path;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 100,
          height: 120,
       decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 203, 203, 203)),
        borderRadius: BorderRadius.circular(15),
       ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(path,height: 80,width: 80,fit: BoxFit.cover,)),
           Text(text, overflow: TextOverflow.ellipsis,
            softWrap: false,
            maxLines: 1,textAlign: TextAlign.left,style: 
      const TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),

          ],
        ),
      );
  }
}