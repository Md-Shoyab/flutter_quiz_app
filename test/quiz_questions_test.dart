import 'package:flutter_quiz_app/models/quiz_questions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('QuizQuestions', () {
    test('QuizQuestions constructor should create an object with the given text and answers', () {
      // Arrange
      const String questionText = 'What is the capital of France?';
      final List<String> questionAnswers = ['Paris', 'Berlin', 'London', 'Madrid'];

      // Act
      final QuizQuestions quizQuestion = QuizQuestions(questionText, questionAnswers);

      // Assert
      expect(quizQuestion.text, questionText);
      expect(quizQuestion.answers, questionAnswers);
    });

    test('QuizQuestions should throw an error if text or answers are null', () {
      // Arrange
      const String questionText = 'null';
      final List<String> questionAnswers = ['Paris', 'Berlin', 'London', 'Madrid'];

      // Act and Assert
      expect(() => QuizQuestions(questionText, questionAnswers), throwsAssertionError);
    });
  });
}
