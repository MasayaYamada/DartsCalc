import 'package:flutter/material.dart';
import 'package:gcricket/game-view.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => GameView(),
      },
    );
  }
}