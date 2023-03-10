import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:points_counter_app/Phrase.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  List<Phrase> phrases = [
    Phrase(
        enName: 'don' 't forget to subscribe',
        jpName: 'kuro suru koto o wasurenaide ',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    Phrase(
        enName: 'i love programming',
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        sound: 'sounds/phrases/i_love_programming.wav'),
    Phrase(
        enName: 'programming is easy',
        jpName: 'Puroguramingu wa kantandesu',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    Phrase(
        enName: 'where are you going?',
        jpName: 'Doko ni iku no?',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    Phrase(
        enName: 'what is your name',
        jpName: 'Namae wa nandesu ka',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    Phrase(
        enName: 'i love anime',
        jpName: 'Watashi wa anime ga daisukidesu',
        sound: 'sounds/phrases/i_love_anime.wav'),
    Phrase(
        enName: 'are you coming',
        jpName: 'Kimasu ka',
        sound: 'sounds/phrases/are_you_coming.wav'),
    Phrase(
        enName: 'how are you feeling',
        jpName: 'Go kibun wa ikagadesu ka',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    Phrase(
        enName: 'yes i' 'm coming',
        jpName: 'Hai, ikimasu',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Phases"),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhraseItems(
              phases: phrases[index],
              color: Colors.green,
            );
          }),
    );
  }
}
