import 'package:drinking_games/utils/ColorUtil.dart';
import 'package:drinking_games/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'That\'s a Drink',
      theme: ThemeData(
        primarySwatch: HexColor("#494747"),
        primaryColor: HexColor("#494747"),
        primaryColorLight: HexColor("#747272"),
        primaryColorDark: HexColor("#222020"),
        accentColor: HexColor("#b6bc94"),
      ),
      home: HomeScreen(),
    );
  }
}
