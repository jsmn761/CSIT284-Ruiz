import 'dart:math';

import 'package:flutter/material.dart';

class ExampleText extends StatefulWidget {
  const ExampleText({super.key});

  @override
  State<ExampleText> createState() {
    return _ExampleTextState();
  }
}

class _ExampleTextState extends State<ExampleText> {
  final randomizer = Random();

  final colors = [
    Colors.green,
    Colors.pink,
    Colors.yellow,
    Colors.red,
    Colors.blue,
  ];

  int select = 0;

  void allQuiz() {
    setState(() {
      select = randomizer.nextInt(colors.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'lib/image/logo.png',
          color: colors[select],
          width: 180,
        ),
        const SizedBox(height: 25),
        Text(
          "Try Flutter",
          style: TextStyle(
            color: colors[select],
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 25),
        OutlinedButton(
          onPressed: allQuiz,
          child: Text(
            'Start',
            style: TextStyle(
              color: colors[select],
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}