import 'package:flutter/material.dart';

import '../game_board.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dots and Boxes'),
      ),
      body: Center(
          child: Column(
            children: [

              const SizedBox(height: 60,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  GameBoardView(),

                ],
              ),


              SizedBox(height: 50),

              ElevatedButton(
                onPressed: () {  },
                child: Text('Restart'),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {  },
                child: Text('Undo'),
              ),


            ],
          ),


      ),
    );
  }
}
