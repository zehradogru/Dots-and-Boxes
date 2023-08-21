import 'package:dots_and_boxes/pages/game_screen.dart';
import 'package:flutter/material.dart';

import 'game_board.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dots and Boxes',
      home: GameBoardView(),
    );
  }
}
