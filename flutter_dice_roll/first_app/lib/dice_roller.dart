import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice1Roll = 6;
  var currentDice2Roll = 6;

  void rollDice() {
    setState(
      () {
        currentDice1Roll = randomizer.nextInt(6) + 1;
        currentDice2Roll = randomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(content) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice_images/dice-$currentDice1Roll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/dice_images/dice-$currentDice2Roll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
