import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
 void playSound(int soundNum){
   final player = AudioCache();
   player.play('note$soundNum.wav');
 }
 Expanded buildKey({Color color, int soundNum}){
   return Expanded(
     child: FlatButton(
       color: color,
       onPressed: (){
         playSound(soundNum);
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
            children: <Widget>[
              buildKey(color : Colors.orange, soundNum: 1),
              buildKey(color : Colors.deepPurpleAccent, soundNum: 2),
              buildKey(color : Colors.red, soundNum: 3),
              buildKey(color : Colors.teal, soundNum: 4),
              buildKey(color : Colors.blueAccent, soundNum: 5),
              buildKey(color : Colors.yellowAccent, soundNum: 6),
              buildKey(color : Colors.green, soundNum: 7),

            ],
          ),
        ),
      ),
    );
  }
}
