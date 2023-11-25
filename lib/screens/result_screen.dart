import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'You have answered x out of y questions correctly!',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Text(
              'List of answers and questions',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz :)'),
            ),
          ],
        ),
      ),
    );
  }
}
