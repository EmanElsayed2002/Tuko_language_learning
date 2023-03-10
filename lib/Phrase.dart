import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Phrase {
  final String sound;
  final String jpName;
  final String enName;
  Phrase({required this.enName, required this.jpName, required this.sound});
}

class PhraseItems extends StatelessWidget {
  PhraseItems({super.key, required this.phases, required this.color});
  Phrase phases;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phases.jpName,
                  style: TextStyle(color: Colors.white),
                ),
                Text(phases.enName, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(phases.sound));
              },
              icon: Icon(
                Icons.play_arrow,
              )),
        ],
      ),
    );
  }
}
