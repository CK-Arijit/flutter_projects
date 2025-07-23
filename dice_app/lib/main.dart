import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            const Color.fromARGB(255, 25, 0, 126),
            const Color.fromARGB(255, 41, 1, 216),
          ],
        ),
      ),
    ),
  );
}
