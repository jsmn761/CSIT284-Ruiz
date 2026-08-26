import 'package:flutter/material.dart';
import 'package:lab_act_2/styled_text.dart';
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context){
    return Container(
       decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
        Colors.pink,
        Colors.green
          ]
        )
      ),

      child: Center(child: image.asset 'assets/dice-image.png')
        );
  }
}
