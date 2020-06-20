
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartGameScreen extends StatefulWidget {
  @override
  _StartGameScreenState createState() => _StartGameScreenState();
}

class _StartGameScreenState extends State<StartGameScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "Player One"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Player Two"),
          ),
          Container(
            margin: EdgeInsets.all(40.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/game");
              },
              child: Text("PLAY"),
            ),
          )
        ],
      ),
    );
  }
}
