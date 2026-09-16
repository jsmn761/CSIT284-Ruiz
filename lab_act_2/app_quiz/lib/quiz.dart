import 'package:flutter/material.dart';
 
import 'package:app_quiz/start_screen.dart';
import 'package:app_quiz/question_screen.dart';
 
class Quiz extends StatefulWidget {
  const Quiz({super.key});
 
  @override 
  State<Quiz> createState() {
      return QuizState();
  }
}
 
class QuizState extends State<Quiz> {
   var currentScreen = 'start';
 
  void switchScreen() {
    setState(() {
      currentScreen = 'questions';
    });
  }
 
  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
 
    if (currentScreen == 'questions') {
      screenWidget = const QuestionsScreen();
    }
 
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFF5F1E8),
                Color(0xFFE8EFE5),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}