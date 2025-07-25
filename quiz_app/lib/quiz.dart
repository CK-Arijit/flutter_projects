import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'start-screen';
  final List<String> selectedAnswers = [];

  // @override
  // void initState() {
  //   // Initialize the active screen to StartScreen
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      // If all questions have been answered, reset the quiz
      setState(() {
        selectedAnswers.clear();
        activeScreen = 'results-screen'; // Reset to start screen
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = 'start-screen'; // Reset to start screen
    });
  }

  @override
  Widget build(BuildContext context) {
    final Widget screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : activeScreen == 'questions-screen'
        ? QuestionsScreen(
            onSelectAnswer: chooseAnswer,
          )
        : ResultsScreen(restartQuiz: restartQuiz);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
