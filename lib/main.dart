import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(const MyQuizApp());
}

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class MyQuizApp extends StatelessWidget {
  const MyQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 78, 13, 151),
                  Color.fromARGB(255, 132, 9, 243)
                ],
                begin: startAlignment,
                end: endAlignment
            ),
          ),
          child: StartScreen(),
        ),
      ),
    );
  }
}
