class QuizQuestion {
  final String question;
  final List<String> answers;

  const QuizQuestion(
    this.question,
    this.answers,
  );

  List<String> getShuffledAnswers() {
    final shuffled = List.of(answers);
    // Shuffle the answers to present them in a random order
    shuffled.shuffle();
    return shuffled;
  }
}
