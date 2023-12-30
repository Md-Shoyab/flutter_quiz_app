import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants/app_colors.dart';

import 'package:flutter_quiz_app/widgets/answer_button.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswers) {
    widget.onSelectedAnswer(selectedAnswers);
    // currentQuestionIndex = currentQuestionIndex + 1;
    // currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++; // Only work for incrementing value by 1
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.geologica(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
            ),
            const SizedBox(height: 50),
            ...currentQuestion.shuffledAnswers.map(
              (answer) => AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
