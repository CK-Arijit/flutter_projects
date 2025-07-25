import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final void Function() restartQuiz;
  const ResultsScreen({super.key, required this.restartQuiz});

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
              'You answered X out of Y questions correctly!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 201, 153, 251),
              ),
              textAlign: TextAlign.center,
            ),
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
