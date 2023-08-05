import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key,  this.size, required this.path});


  final double? size;
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(path,
              width: size ,
              fit:  BoxFit.contain,
              );
             
  }
}