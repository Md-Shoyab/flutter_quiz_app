import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this._startQuiz, {super.key});
  final void Function() _startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz_logo.png',
            width: 200,
          ),
          const SizedBox(height: 80),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Learn Anything from the Fun of Quiz App!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: _startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 247, 59, 2),
              backgroundColor: Colors.white,
            ),
            icon: const Icon(Icons.keyboard_arrow_right),
            label: const Text('Start Quiz!!'),
          ),
        ],
      ),
    );
  }
}
