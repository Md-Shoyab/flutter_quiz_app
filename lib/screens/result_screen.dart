import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/widgets/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }
    return summary;
  }

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
            QuestionSummary(getSummaryData()),
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
