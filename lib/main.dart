import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Xylophone",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildButton(Colors.red, "note1.wav"),
                    buildButton(Colors.orange, "note2.wav"),
                    buildButton(Colors.yellow, "note3.wav"),
                    buildButton(Colors.green, "note4.wav"),
                    buildButton(Colors.green.shade900, "note5.wav"),
                    buildButton(Colors.blue, "note6.wav"),
                    buildButton(Colors.purple, "note7.wav"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(Color color, String note) {
    return Expanded(
      child: TextButton(
        style:
            TextButton.styleFrom(backgroundColor: color, primary: Colors.white),
        onPressed: () {
          var audioPlayer = AudioCache();
          audioPlayer.play(note);
        },
      ),
    );
  }
}
