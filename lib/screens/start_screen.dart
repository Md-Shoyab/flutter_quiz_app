import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Learn Anything from the Fun of Quiz App!',
              textAlign: TextAlign.center,
              style: GoogleFonts.geologica(
                textStyle: const TextStyle(
                  fontSize: 25,
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: _startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primaryColor,
              backgroundColor: AppColors.white,
            ),
            icon: const Icon(Icons.keyboard_arrow_right),
            label: Text(
              'Start Quiz!!',
              style: GoogleFonts.geologica(
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
