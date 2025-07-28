import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  final void Function() restartQuiz;
  final List<String> selectedAnswers;
  const ResultsScreen({
    super.key,
    required this.restartQuiz,
    required this.selectedAnswers,
  });

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer':
            questions[i].answers[0], // Assuming the first answer is correct
        'user_answer': selectedAnswers[i],
        'is_correct': selectedAnswers[i] == questions[i].answers[0],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You answered ${getSummaryData().where((item) => item['is_correct'] as bool).length} out of ${questions.length} questions correctly!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 201, 153, 251),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            QuestionsSummary(getSummaryData()),
            SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: restartQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 20),
                side: BorderSide(color: Colors.white, width: 1),
              ),
              label: const Text('Restart Quiz!'),
              icon: const Icon(Icons.replay),
            ),
          ],
        ),
      ),
    );
  }
}
