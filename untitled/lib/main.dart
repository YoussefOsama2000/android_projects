import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Center(
            child: Text('I am poor'),
          )),
      body: Center(
          child: Image(
        image: AssetImage('images/poor.jpg'),
      )),
      backgroundColor: Colors.white,
    ),
  ));
}
