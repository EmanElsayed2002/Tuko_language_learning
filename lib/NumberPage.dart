import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'item.dart';

class NumberPage extends StatelessWidget {
  List<Numbers> numbers = [
    Numbers(
      photo: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Numbers(
      photo: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Numbers(
      photo: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Numbers(
      photo: 'assets/images/numbers/number_four.png',
      jpName: 'shi/yon',
      enName: 'four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Numbers(
      photo: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Numbers(
      photo: 'assets/images/numbers/number_six.png',
      jpName: 'roku',
      enName: 'six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Numbers(
      photo: 'assets/images/numbers/number_seven.png',
      jpName: 'shichi/nana',
      enName: 'seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Numbers(
      photo: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Numbers(
      photo: 'assets/images/numbers/number_nine.png',
      jpName: 'kyū/ku',
      enName: 'nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Numbers(
      photo: 'assets/images/numbers/number_ten.png',
      jpName: 'jū',
      enName: 'ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Numbers",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, num) {
            return Item(
              number: numbers[num],
              color: Colors.orange,
            );
          }),
    );
  }

  List<Item> getList(List<Numbers> numbers) {
    List<Item> generatedList = [];
    for (int i = 0; i < numbers.length; i++) {
      generatedList.add(Item(
        number: numbers[i],
        color: Colors.orange,
      ));
    }
    return generatedList;
  }
}

class Numbers {
  final String photo;
  final String jpName;
  final String enName;
  final String sound;

  Numbers(
      {required this.photo,
      required this.jpName,
      required this.enName,
      required this.sound});
}
