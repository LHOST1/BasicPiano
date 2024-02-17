import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Audio extends StatefulWidget {
  const Audio({super.key});

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  final oynat = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Basic Piyano"),
      )),
      body: Center(
          child: Column(children: [
        Row(
          children: [
            Container(
              child: buttonStyle("bip.wav", Colors.black),
              width: 200,
              height: 100,
            ),
            Container(
              child: buttonStyle("bongo.wav", Colors.grey),
              width: 200,
              height: 100,
            )
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          children: [
            Container(
              child: buttonStyle("clap1.wav", Colors.green),
              width: 200,
              height: 100,
            ),
            Container(
              child: buttonStyle("clap2.wav", Colors.blueAccent),
              width: 200,
              height: 100,
            )
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          children: [
            Container(
              child: buttonStyle("clap3.wav", Colors.blue),
              width: 200,
              height: 100,
            ),
            Container(
              child: buttonStyle("crash.wav", Colors.pink),
              width: 200,
              height: 100,
            )
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          children: [
            Container(
              child: buttonStyle("how.wav", Colors.purple),
              width: 200,
              height: 100,
            ),
            Container(
              child: buttonStyle("oobah.wav", Colors.red),
              width: 200,
              height: 100,
            )
          ],
        ),
      ])),
    );
  }

  ElevatedButton buttonStyle(String assets, Color color) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return color; // color değişkenini kullanarak backgroundColor'ı ayarla
          },
        ),
      ),
      child: Text(""),
      onPressed: () async {
        // ignore: invalid_use_of_visible_for_testing_member
        await oynat.play(AssetSource(assets));
      },
    );
  }
}
