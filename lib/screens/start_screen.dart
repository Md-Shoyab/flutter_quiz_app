import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants/app_asset_path.dart';
import 'package:flutter_quiz_app/constants/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

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
            AppAssetPath.quizLogoImagePath,
            width: 200,
          ),
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              AppStrings.learnAnythingFromQuizText,
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
              AppStrings.startQuizText,
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
