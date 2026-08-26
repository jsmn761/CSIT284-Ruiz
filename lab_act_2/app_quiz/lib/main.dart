import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: MyApp())));

}
 class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(context) {
    child: Center(child: Column(
      children: [Image.asset('lib/image/logo.png')],
    ))
  }
 }
