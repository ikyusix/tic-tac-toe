
import 'package:tictactoe_live_code/screen/BoardGameScreen.dart';
import 'package:tictactoe_live_code/screen/StartGameScreen.dart';
import 'package:flutter/material.dart';
import 'ScaffoldCustom.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: ScaffoldCustom(StartGameScreen()),
  onGenerateRoute: buildRoute,
));

Route buildRoute(RouteSettings settings) {
  var routes = <String, WidgetBuilder>{
    "/": (context) => ScaffoldCustom(StartGameScreen()),
    "/game": (context) => ScaffoldCustom(BoardGameScreen()),
  };
  WidgetBuilder widgetBuilder = routes[settings.name];
  return MaterialPageRoute(builder: (context) => widgetBuilder(context));
}