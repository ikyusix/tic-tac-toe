
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldCustom extends StatelessWidget{
  Widget body;
  ScaffoldCustom(this.body);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("TicTacToe"),
          backgroundColor: Colors.teal,
        ),
        body: this.body,
      ),
    );
  }
}