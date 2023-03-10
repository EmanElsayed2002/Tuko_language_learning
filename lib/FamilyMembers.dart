import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:points_counter_app/Category.dart';
import 'package:points_counter_app/NumberPage.dart';
import 'package:points_counter_app/item.dart';

class FamilyMembers extends StatelessWidget {
  FamilyMembers({super.key});

  List<Numbers> familys = [
    Numbers(
        photo: 'assets/images/family_members/family_grandfather.png',
        enName: 'Father',
        jpName: '	Chichioya',
        sound: 'sounds/family_members/father.wav'),
    Numbers(
        photo: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter',
        sound: 'sounds/family_members/mother.wav'),
    Numbers(
        photo: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'Grand Father',
        sound: 'sounds/family_members/grand_father.wav'),
    Numbers(
        photo: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    Numbers(
        photo: 'assets/images/family_members/family_mother.png',
        jpName: 'Sobo',
        enName: 'Grand Mother',
        sound: 'sounds/family_members/grand_mother.wav'),
    Numbers(
        photo: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother',
        sound: 'sounds/family_members/older_bother.wav'),
    Numbers(
        photo: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister',
        sound: 'sounds/family_members/older_sister.wav'),
    Numbers(
        photo: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son',
        sound: 'sounds/family_members/son.wav'),
    Numbers(
        photo: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ototo',
        enName: 'younger brother',
        sound: 'sounds/family_members/younger_brohter.wav'),
    Numbers(
        photo: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imoto',
        enName: 'younger sister',
        sound: 'sounds/family_members/younger_sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Family Members",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
      body: ListView.builder(
          itemCount: familys.length,
          itemBuilder: (context, num) {
            return Item(
              number: familys[num],
              color: Colors.blue,
            );
          }),
    );
  }
}
