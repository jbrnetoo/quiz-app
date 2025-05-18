import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

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
          child: activeScreen,
        ),
      ),
    );
  }
}