import 'package:flutter/material.dart';
import 'package:lab_act_2/styled_text.dart';

class GradientContainer extends StatelessWidget{
  GradientContainer(this.colors, {super.key})
  final List<Color> colors;

  @override
  Widget build(context) {
    child: Column(mainAxisSize: MainAxisSize.min, 
      children: [
        Image.asset(width: 150, currentDiceImage),
        SizedBox(height: 50,),
        TextButton(onPressed: rollDice, 
        child: Text(style: TextStyle(fontSize: 28),))
      ],
    )
  }
}