import 'package:flutter/material.dart';
import 'dart:math';

final random =
    Random();
int heads = 0;
int tails = 0;

String flip() {
  int coinface =
      random
          .nextInt(
            1,
          );
  if (coinface ==
      0) {
    return 'head';
  } else {
    return 'tail';
  }
}

void faceScore() {
  if (flip() ==
      'head') {
    heads++;
  }
  if (flip() ==
      'tail') {
    tails++;
  }
}

void resetgame() {
  tails = 0;
  heads = 0;
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Heads: $heads | Tails: $tails',
          ),
        ),
      ),
    ),
  );
}
