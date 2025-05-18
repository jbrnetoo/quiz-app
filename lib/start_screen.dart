import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 60),
          const Text("Learn Flutter the fun way!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
              )),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {

            },
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(10.0),
                ),
            ),
            icon: Icon(Icons.arrow_right_outlined),
            label: Text("Start Quiz"),
            ),
        ],
      ),
    );
  }
}