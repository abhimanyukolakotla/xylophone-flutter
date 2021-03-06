import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final audioPlayer = AudioCache();
  XylophoneApp() {
    audioPlayer.loadAll([
      "note1.wav",
      "note2.wav",
      "note3.wav",
      "note4.wav",
      "note5.wav",
      "note6.wav",
      "note7.wav"
    ]);
  }
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
                child: Column(
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
      child: ElevatedButton(
        style:
            TextButton.styleFrom(backgroundColor: color, primary: Colors.white),
        onPressed: () {
          audioPlayer.play(note);
        },
        child: null,
      ),
    );
  }
}
