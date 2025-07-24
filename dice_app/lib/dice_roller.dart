import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceNumber = 2;

  void rollDice() {
    // Logic to roll the dice can be added here
    setState(() {
      final randomizer =
          Random().nextInt(6) + 1; // Simulate rolling a dice (1-6)
      currentDiceNumber = currentDiceNumber == randomizer
          ? (randomizer % 6) + 1
          : randomizer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceNumber.png',
            width: 200,
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            child: const Text('Roll Dice'),
          ),
        ],
      ),
    );
  }
}
