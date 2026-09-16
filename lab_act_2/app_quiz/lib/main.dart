import 'package:flutter/material.dart';
import 'exampleText.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 190, 237, 170),
        body: Center(
          child: ExampleText(),
        ),
      ),
    ),
  );
}
