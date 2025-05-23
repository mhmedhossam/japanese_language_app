import 'package:flutter/material.dart';
import 'package:language_learning_fapp/components/phasecomponent.dart';
import 'package:language_learning_fapp/models/item_model.dart';
import 'package:language_learning_fapp/screens/homapage.dart';

import '../components/newcomponent.dart';

class Phasespage extends StatelessWidget {
  Phasespage({super.key});
  final List<ItemModel> phaseItem = [
    ItemModel(
      sound: "sounds/phrases/are_you_coming.wav",
      jaName: "Hai _ im _ kamingu",
      enName: "are_you_coming",
    ),
    ItemModel(
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
      jaName: "Hai _ im _ kamingu",
      enName: "dont_forget_to_subscribe",
    ),
    ItemModel(
      sound: "sounds/phrases/how_are_you_feeling.wav",
      jaName: "Hai _ im _ kamingu",
      enName: "how_are_you_feeling",
    ),
    ItemModel(
      sound: "sounds/phrases/i_love_anime.wav",
      jaName: "Hai _ im _ kamingu",
      enName: "i_love_anime",
    ),
    ItemModel(
      sound: "sounds/phrases/i_love_programming.wav",
      jaName: "Hai _ im _ kamingu",
      enName: "i_love_programming",
    ),
    ItemModel(
      sound: "sounds/phrases/programming_is_easy.wav",
      jaName: "Hai _ im _ kamingu",
      enName: "programming_is_easy",
    ),
    ItemModel(
      sound: "sounds/phrases/what_is_your_name.wav",
      jaName: "Hai _ im _ kamingu",
      enName: "what_is_your_name",
    ),
    ItemModel(
      sound: "sounds/phrases/where_are_you_going.wav",
      jaName: "Hai  im  kamingu",
      enName: "where_are_you_going",
    ),
    ItemModel(
      sound: "sounds/phrases/yes_im_coming.wav",
      jaName: "Hah am hamingu",
      enName: "yes_im_coming",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
              (route) => false,
            );
          },
        ),
        title: const Text(
          "phases",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PhasesItems(item: phaseItem[index]);
        },
        itemCount: phaseItem.length,
      ),
    );
  }
}
