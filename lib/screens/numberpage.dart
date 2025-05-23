import 'package:flutter/material.dart';
import 'package:language_learning_fapp/screens/homapage.dart';

import '../components/listitems.dart';
import '../components/newcomponent.dart';
import '../models/item_model.dart';

class NumberPage extends StatelessWidget {
  NumberPage({super.key});

  final List<ItemModel> numbers = [
    ItemModel(
      enName: "one",
      image: "assets/images/numbers/number_one.png",
      jaName: "ichi",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    ItemModel(
      enName: "two",
      image: "assets/images/numbers/number_two.png",
      jaName: "Ni",
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    ItemModel(
      enName: "three",
      image: "assets/images/numbers/number_three.png",
      jaName: "san",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    ItemModel(
      enName: "four",
      image: "assets/images/numbers/number_four.png",
      jaName: "Shi",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    ItemModel(
      enName: "five",
      image: "assets/images/numbers/number_five.png",
      jaName: "Go",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    ItemModel(
      enName: "six",
      image: "assets/images/numbers/number_six.png",
      jaName: "Roku",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    ItemModel(
      enName: "seven",
      image: "assets/images/numbers/number_seven.png",
      jaName: "Sebun",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    ItemModel(
      enName: "eight",
      image: "assets/images/numbers/number_eight.png",
      jaName: "hachi",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    ItemModel(
      enName: "nine",
      image: "assets/images/numbers/number_nine.png",
      jaName: "Kyū",
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    ItemModel(
      enName: "ten",
      image: "assets/images/numbers/number_ten.png",
      jaName: 'Jū',
      sound: "sounds/numbers/number_ten_sound.mp3",
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
          "Numbers",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListItems(item: numbers[index]);
        },
        itemCount: numbers.length,
      ),
    );
  }
}
