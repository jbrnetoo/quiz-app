import 'package:flutter/material.dart';

void main() {
  runApp(const MyQuizApp());
}

class MyQuizApp extends StatelessWidget {
  const MyQuizApp({super.key});

  void quizButton() {
    // Something here...
    print("#Click");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
              ),
              SizedBox(height: 60),
              Text("Learn Flutter the fun way!",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25
                )),
              SizedBox(height: 30),
              OutlinedButton(
                onPressed: quizButton,
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: 
                      BorderRadius.circular(10.0),
                  )
                ),
                child: Text("Start Quiz",
                  style: const TextStyle(
                    color: Colors.white
                  )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
