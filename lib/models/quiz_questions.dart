class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffedList = List.of(answers);
    shuffedList.shuffle();
    return shuffedList;
  }
}
