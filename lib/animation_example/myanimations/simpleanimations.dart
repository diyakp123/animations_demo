import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';


//can use the flutter_animate package to directly implement animations without having to use controllers

class SimpleAnimations extends StatefulWidget {
  const SimpleAnimations({super.key});

  @override
  State<SimpleAnimations> createState() => _SimpleAnimationsState();
}

class _SimpleAnimationsState extends State<SimpleAnimations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Animations'),
      ),
      body: Center(
        child: Text("Hello World", style: TextStyle(fontSize: 30),).animate().fade(duration: Duration(milliseconds: 400)).then().slide(duration: Duration(milliseconds: 400)).then().flip(duration: Duration(milliseconds: 400)),
      ),
    );
  }
}