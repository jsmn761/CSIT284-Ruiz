import 'package:flutter/material.dart';
 
import 'package:campus_wellness_tracker/screens/start_screen.dart';
import 'package:campus_wellness_tracker/screens/questions_screen.dart';
 
class Wellness extends StatefulWidget {
  const Wellness({super.key});
 
  @override 
  State<Wellness> createState() {
      return QuizState();
  }
}
 
class QuizState extends State<Wellness> {
   var currentScreen = 'Lets get started';
 
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