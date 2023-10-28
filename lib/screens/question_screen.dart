import 'package:flutter/material.dart';

import 'package:flutter_quiz_app/widgets/answer_button.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
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
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ...currentQuestion.getShuffledAnswers().map(
                  (answer) => AnswerButton(
                    answerText: answer,
                    onTap: () {},
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
