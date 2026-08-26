import 'package:flutter/material.dart';
import 'gradient_container.dart';

class StyledText extends GradientContainer{
  const StyledText({super.key});

@override
  Widget build (context){
  return Container(
    child: Text(
        'Hello World',
        style: TextStyle(
          fontSize: 48,
          color: Colors.white,
        ),
        ),
        );
}
}