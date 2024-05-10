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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: IconButton(
              padding: EdgeInsets.all(0.0),
              icon: Container(
                color: Colors.red,
              ),
              onPressed: () {
                playSound("1");
              },
            ),
          ),
          Expanded(
            child: IconButton(
              padding: EdgeInsets.all(0.0),
              icon: Container(
                color: Colors.orange,
              ),
              onPressed: () {
                // setState(() {
                playSound("2");
                // });
              },
            ),
          ),
          Expanded(
            child: IconButton(
              padding: EdgeInsets.all(0.0),
              icon: Container(
                color: Colors.yellow,
              ),
              onPressed: () {
                // setState(() {
                playSound("3");
                // });
              },
            ),
          ),
          Expanded(
            child: IconButton(
              padding: EdgeInsets.all(0.0),
              icon: Container(
                color: Colors.green,
              ),
              onPressed: () {
                // setState(() {
                playSound("4");
                // });
              },
            ),
          ),
          Expanded(
            child: IconButton(
              padding: EdgeInsets.all(0.0),
              icon: Container(
                color: Colors.teal,
              ),
              onPressed: () {
                // setState(() {
                playSound("5");
                // });
              },
            ),
          ),
          Expanded(
            child: IconButton(
              padding: EdgeInsets.all(0.0),
              icon: Container(
                color: Colors.blue,
              ),
              onPressed: () {
                // setState(() {
                playSound("6");
                // });
              },
            ),
          ),
          Expanded(
            child: IconButton(
              padding: EdgeInsets.all(0.0),
              icon: Container(
                color: Colors.purple,
              ),
              onPressed: () {
                // setState(() {
                playSound("7");
                // });
              },
            ),
          )
        ],
      ),
    );
  }

  Future<void> playSound(var num) async {
    await player.play(AssetSource("note$num.wav"));
  }
}
