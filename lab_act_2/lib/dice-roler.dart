import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
 const DiceRoller({super.key});

 @override
 State<DiceRoller> createState(){
  return _DiceRollerState();
 }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceImage = 'assets/dice-images/dice-2.png';
  void rollDice() {
    setState(() {
      int num = randomizer.nextInt(6) + 1;
      currentDiceImage = 'assets/dice-images/dice-$num.png';
    });
  }
}
class _DiceRollerState extends State<DiceRoller>{
 @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          
        )
      ],
    )
  }
  }
}