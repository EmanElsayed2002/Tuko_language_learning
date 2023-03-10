import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:points_counter_app/item.dart';

import 'NumberPage.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});
  List<Numbers> colors = [
    Numbers(
        photo: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black',
        sound: 'sounds/colors/black.wav'),
    Numbers(
        photo: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'brown',
        sound: 'sounds/colors/brown.wav'),
    Numbers(
        photo: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoil kiliro',
        enName: 'dusty yellow',
        sound: 'sounds/colors/dusty_yellow.wav'),
    Numbers(
        photo: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray',
        sound: 'sounds/colors/gray.wav'),
    Numbers(
        photo: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green',
        sound: 'sounds/colors/green.wav'),
    Numbers(
        photo: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red',
        sound: 'sounds/colors/red.wav'),
    Numbers(
        photo: 'assets/images/colors/color_white.png',
        jpName: 'Midori',
        enName: 'white',
        sound: 'sounds/colors/white.wav'),
    Numbers(
        photo: 'assets/images/colors/yellow.png',
        jpName: 'kiro',
        enName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Colors"),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Item(number: colors[index], color: Colors.purple);
          }),
    );
  }
}
