import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color? color, required int soundNumber}) {
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () {
          PlaySound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildKey(color: Colors.black, soundNumber: 1),
              buildKey(color: Colors.white, soundNumber: 2),
              buildKey(color: Colors.black, soundNumber: 3),
              buildKey(color: Colors.white, soundNumber: 4),
              buildKey(color: Colors.black, soundNumber: 5),
              buildKey(color: Colors.white, soundNumber: 6),
              buildKey(color: Colors.black, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
