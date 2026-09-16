import 'package:flutter/material.dart';
 
class QuestionsScreen extends StatefulWidget {
const QuestionsScreen({super.key});
 
@override
State<QuestionsScreen> createState() {
  return _QuestionsScreenState();
}
}
 
class _QuestionsScreenState extends State<QuestionsScreen> {
 
var question = 'Which flower is known for following the direction of the sun?';
 
@override
Widget build(context) {
  return Center(
   child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
     Text(
      question,
      textAlign: TextAlign.center,
      style: const TextStyle(
       color: Color(0xFF607D68),
       fontSize: 24,
       fontWeight: FontWeight.bold,
      ),
     ),
 
     const SizedBox(height: 30),
 
     OutlinedButton(
      onPressed: () {},
      child: const Text(
       'Sunflower',
       style: TextStyle(
        fontSize: 20,
       ),
      ),
     ),
 
     OutlinedButton(
      onPressed: () {},
      child: const Text(
       'Rose',
       style: TextStyle(
        fontSize: 20,
       ),
      ),
     ),
 
     OutlinedButton(
      onPressed: () {},
      child: const Text(
       'Lavender',
       style: TextStyle(
        fontSize: 20,
       ),
      ),
     ),
 
     OutlinedButton(
      onPressed: () {},
      child: const Text(
       'Daisy',
       style: TextStyle(
        fontSize: 20,
       ),
      ),
     ),
    ],
   ),
  );
}
}
