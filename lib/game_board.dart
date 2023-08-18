import 'package:flutter/material.dart';

class GameBoardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(5, (j) => GameBoard(j: j)),
    );
  }
}

class GameBoard extends StatefulWidget {
  final int j;

  GameBoard({required this.j});

  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
 // List<int> selectedRow = []; //dikey
  //List<int> selectedRow2 = []; //yatay
  Map<int, int> selectedRowsMap = {};

  bool isRedTurn = true;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (i) {
        return Column(
          children: [
            Stack(
              children: [


            if (i < 4)
              GestureDetector(
                onTap: () {
                  if (!selectedRowsMap.containsKey(i) || !selectedRowsMap.containsValue(widget.j)) {
                    setState(() {
                    //  selectedRow2.add(i);
                      selectedRowsMap[i] = widget.j;
                      isRedTurn = !isRedTurn;
                    });
                  }
                },

                child: Container(
                  width: 85,
                  height: 6,
                  color: selectedRowsMap.containsValue(widget.j) && selectedRowsMap.containsKey(i)
                   //selectedRow2.contains(i)
                      ? isRedTurn
                      ? Colors.red
                      : Colors.blue
                      : Colors.black12,
                 // margin: EdgeInsets.only(top: widget.j < 5 ? 0 : 20),
                ),
              ),



            if (widget.j < 4)
              GestureDetector(
            onTap: () {
              if (!selectedRowsMap.containsKey(widget.j) || !selectedRowsMap.containsValue(i)) {
                setState(() {
                  selectedRowsMap[widget.j] = i;

                  // selectedRow.add(i);
                  isRedTurn = !isRedTurn;
                });
              }
            },
            child: Container(
              width: 6,
              height: 85,
              color: selectedRowsMap.containsValue(i) && selectedRowsMap.containsKey(widget.j)
              //selectedRow.contains(i)
                  ? isRedTurn
                  ? Colors.red
                  : Colors.blue
                  : Colors.black12,
            ),
              ),


                const CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.black,
                ),


              ],
            )

          ],
        );
      }),
    );
  }
}


