import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(DrumMachine());
}
class DrumMachine extends StatelessWidget {


  //await player.play(DeviceFileSource('assets/bip.wav'));
  // await player.setSource(AssetSource('assets/bip.wav'));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final player = AudioPlayer();
  void playSound(String sound) async{
    await player.play(AssetSource('$sound.wav'));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: buildDrumPad('ridebel', Colors.blueAccent),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: buildDrumPad('bongo' ,Colors.deepOrangeAccent),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: buildDrumPad('woo',Colors.pinkAccent),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: buildDrumPad('clap2',Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: buildDrumPad('clap3',Colors.yellow),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: buildDrumPad('crash', Colors.purpleAccent),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: buildDrumPad('how', Colors.green),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: buildDrumPad('oobah',Colors.brown),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextButton buildDrumPad(String ses, Color renk) {
    return TextButton(
                    onPressed: ()  {
                     playSound(ses);
                    },
                    child: Container(
                      color: renk,
                    ),
                  );
  }
}

