import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: (itemData['question_index'] as int),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (itemData['question'] as String),
                  style: GoogleFonts.geologica(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                CorrectAnswer(itemData: itemData, jsonKey: 'user_answer'),
                const SizedBox(height: 5.0),
                CorrectAnswer(itemData: itemData, jsonKey: 'correct_answer'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CorrectAnswer extends StatelessWidget {
  const CorrectAnswer({
    super.key,
    required this.itemData,
    required this.jsonKey,
  });

  final Map<String, Object> itemData;
  final String jsonKey;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: jsonKey == 'user_answer' ? 'Your Answer: ' : 'Correct Answer: ',
            style: GoogleFonts.geologica(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w200,
                color: AppColors.white,
              ),
            ),
          ),
          TextSpan(
            text: (itemData[jsonKey] as String),
            style: GoogleFonts.geologica(
              textStyle: TextStyle(
                // fontSize: 20,
                fontWeight: FontWeight.w200,
                color: jsonKey == 'user_answer'
                    ? const Color.fromARGB(255, 255, 179, 255)
                    : const Color.fromARGB(255, 198, 249, 31),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrectAnswer,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 198, 249, 31)
            : const Color.fromARGB(255, 255, 179, 255),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
