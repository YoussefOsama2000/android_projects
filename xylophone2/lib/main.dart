import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final player = AudioCache();
  Expanded buildButton(int i, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          player.play('note$i.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildButton(1, Colors.red),
              buildButton(2, Colors.orange),
              buildButton(3, Colors.yellow),
              buildButton(4, Colors.green),
              buildButton(5, Colors.teal),
              buildButton(6, Colors.blue),
              buildButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
