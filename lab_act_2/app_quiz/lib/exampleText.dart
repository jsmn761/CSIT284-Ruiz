import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ExampleText extends StatefulWidget{
  const ExampleText({super.key});
  @override
  State<ExampleText> createState(){
    return _ExampleTextState();
  }
}

class _ExampleTextState extends State<ExampleText>{
  final randomizer = Random();
  var colors = (Colors.green, Colors.pink, Colors.yellow, Colors.red, Colors.blue);
  int select = 0;
}

void AllQuiz(){
  setState((){
    select = randomizer.nextInt(colors.length);
  });
}

@override 
Widget build(BuildContext context){
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset('lib/image/logo.png', color: colors.elementAt(select),),
      Text("Try Flutter", style: TextStyle(color: colors.elementAt(select), fontSize: 20),),
      OutlinedButton(onPressed: AllQuiz, child: Text('Start', style: TextStyle(color: colors.elementAt(select), fontSize: 16),))
    ]
  );
}
}