import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: (AppBar(
          title: Text('Xylophone',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30.0,),),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        )),
        backgroundColor: Colors.redAccent,
        body: Xylophone(),
      ),
    ),
  );
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playsound(int sound) {
    setState(() {
      final player = AudioPlayer();
      player.play(AssetSource('note$sound.wav'));
    });
  }

  InkWell buildkey(Color color, int sound) {
    return InkWell(
      onTap: () {
        playsound(sound);
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        height: 70,
        width: 350,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildkey(Colors.red, 1),
        buildkey(Colors.yellow, 2),
        buildkey(Colors.green, 3),
        buildkey(Colors.white, 4),
        buildkey(Colors.teal, 5),
        buildkey(Colors.black, 6),
        buildkey(Colors.tealAccent, 7),
      ],
    );
  }
}
