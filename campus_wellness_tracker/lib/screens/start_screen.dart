import 'package:flutter/material.dart';
 
class StartScreen extends StatelessWidget {
const StartScreen(this.startQuiz, {super.key});
 
final void Function() startQuiz;
 
@override
Widget build(context) {
  return Center(
   child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
     Image.asset(
      'lib/image/logo2.png',
      width: 200,
      color: const Color(0xFF7A9E7E),
     ),
 
     const SizedBox(height: 30),
 
     const Text(
      'Evaluate your current study-life balance.',

      style: TextStyle(
       color: Color(0xFF607D68),
       fontSize: 26,
       fontWeight: FontWeight.bold,
      ),
     ),

     const Text(
      'Jasmine Ruiz',

      style: TextStyle(
       color: Color(0xFF607D68),
       fontSize: 26,
       fontWeight: FontWeight.bold,
      ),
     ),

     const Text(
      'BSIT-3',

      style: TextStyle(
       color: Color(0xFF607D68),
       fontSize: 26,
       fontWeight: FontWeight.bold,
      ),
     ),
 
     const SizedBox(height: 25),
 
     OutlinedButton.icon(
      onPressed: startQuiz,
      style: OutlinedButton.styleFrom(
       foregroundColor: const Color(0xFF607D68),
       side: const BorderSide(
        color: Color(0xFF607D68),
        width: 2,
       ),
       padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
       ),
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: const Text(
       'Start Assessment',
       style: TextStyle(
        fontSize: 20,
       ),
      ),
     )
    ],
   ),
  );
}
}
