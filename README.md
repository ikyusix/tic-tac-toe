# tictactoe_live_code

A new Flutter application.

## Notes

#### First try using Grid

```Dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe_live_code/model/game_pad.dart';

class BoardGameScreen extends StatefulWidget {
  @override
  _BoardGameScreenState createState() => _BoardGameScreenState();
}

class _BoardGameScreenState extends State<BoardGameScreen> {

  List<List> _matrix;

  _BoardGameScreenState() {
    _initMatrix();
  }

  _initMatrix(){
    _matrix.length = 3;
    for (var i = 0; i < _matrix.length; i++) {
      _matrix[i].length = 3;
      for (var j = 0; j < _matrix[i].length; j++) {
        _matrix[i][j] = ' ';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(70.0),
      child: GridView.count(crossAxisCount: 3,
        children: List.generate(9, (index) {
          return GestureDetector(
            onTap: (){
              print("123");
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 8.0,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("O",style: TextStyle(fontSize: 75.0),)
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

```