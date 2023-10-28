import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: GoogleFonts.geologica(
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColors.secondaryPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
