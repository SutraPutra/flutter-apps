import 'package:flutter/material.dart';

import 'package:coin_flip_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.blue(),
        // body: GradientContainer(
        //   Color.fromARGB(255, 17, 24, 75),
        //   Color.fromARGB(255, 44, 56, 151),
      ),
    ),
  );
}
