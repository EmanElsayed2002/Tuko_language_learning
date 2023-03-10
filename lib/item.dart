import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:points_counter_app/Category.dart';

import 'NumberPage.dart';

class Item extends StatelessWidget {
  Item({Key? key, required this.number, required this.color}) : super(key: key);
  final Numbers number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(number.photo),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () async {
                print('pressed');
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
              },
              icon: Icon(
                Icons.play_arrow,
                color: Color(0xffFFF6DC),
              )),
        ],
      ),
    );
  }
}
