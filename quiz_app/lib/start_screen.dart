import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Insert image from assets
          const Image(
            image: AssetImage('assets/images/quiz-logo.png'),
            width: 300,
            color: Color.fromARGB(
              150,
              255,
              255,
              255,
            ), // Add a color filter to the image
          ),
          SizedBox(height: 80), // Add some space between the image and the text
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              fontSize: 24,
              color: const Color.fromARGB(255, 237, 223, 252),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ), // Add some space between the text and the button
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 20),
              side: BorderSide(color: Colors.white, width: 1),
            ),
            label: const Text('Start Quiz!'),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
