import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  // nouns.take(50).forEach(print);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 15,
          shadowColor: Colors.black,
          title: Text(
            'Xylophone',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: MyApp(),
        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final player = AudioPlayer();

  Expanded buildKey(Color keyColor,int noteNumber){
    return Expanded(
      child: IconButton(
        padding: EdgeInsets.all(0.0),
        icon: Container(
          color: keyColor,
        ),
        onPressed: () {
          playSound(noteNumber);
        },
      ),
    );
  }

  void playSound(var num) async {
    await player.play(AssetSource("note$num.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Colors.red,1),
          buildKey(Colors.orange,2),
          buildKey(Colors.yellow,3),
          buildKey(Colors.green,4),
          buildKey(Colors.teal,5),
          buildKey(Colors.blue,6),
          buildKey(Colors.purple,7),
        ],
      ),
    );
  }
}
