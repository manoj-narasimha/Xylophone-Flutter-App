// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(PlayArea());
}

class PlayArea extends StatelessWidget {
  const PlayArea({Key? key}) : super(key: key);
  void noteValue(note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          noteValue(soundNumber);
        },
        child: Container(
          height: 80.0,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildKey(Colors.red,1),
              buildKey(Colors.blue,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.teal,4),
              buildKey(Colors.greenAccent,5),
              buildKey(Colors.orange,6),
              buildKey(Colors.cyan,7),
            ],
          ),
        ),
      ),
    );
  }
}
