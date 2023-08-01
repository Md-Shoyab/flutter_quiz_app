import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/screens/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
