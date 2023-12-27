import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class CoinFlipper extends StatefulWidget {
  const CoinFlipper({super.key});
  @override
  State<CoinFlipper> createState() {
    return _CoinFlipperState();
  }
}

class _CoinFlipperState extends State<CoinFlipper> {
  var currentCoinFlip = 3; //3rd image is the default load image

  void flipCoin() {
    setState(
      () {
        currentCoinFlip = randomizer.nextInt(2) + 1;
      },
    );
  }

  void resetCoin() {
    setState(() {
      currentCoinFlip = 3; //3rd image is the default load image
    });
  }

  @override
  Widget build(content) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/coin_images/coin_$currentCoinFlip.png',
          width: 250,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: flipCoin,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Flip Coin'),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: resetCoin,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
