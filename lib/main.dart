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
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(child: buildKey(color: Colors.black, soundNumber: 1)),
              Card(child: buildKey(color: Colors.white, soundNumber: 2)),
              Card(child: buildKey(color: Colors.black, soundNumber: 3)),
              Card(child: buildKey(color: Colors.white, soundNumber: 4)),
              Card(child: buildKey(color: Colors.black, soundNumber: 5)),
              Card(child: buildKey(color: Colors.white, soundNumber: 6)),
              Card(child: buildKey(color: Colors.black, soundNumber: 7)),
            ],
          ),
        ),
      ),
    );
  }
}
