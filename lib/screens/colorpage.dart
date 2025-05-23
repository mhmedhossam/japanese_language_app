import 'package:flutter/material.dart';
import 'package:language_learning_fapp/models/item_model.dart';
import 'package:language_learning_fapp/screens/homapage.dart';

import '../components/listitems.dart';
import '../components/newcomponent.dart';

class ColorPage extends StatelessWidget {
  final List<ItemModel> coloritem = [
    ItemModel(
      enName: "black",
      image: "assets/images/colors/color_black.png",
      jaName: "ichi",
      sound: "sounds/colors/black.wav",
    ),
    ItemModel(
      enName: "brown",
      image: "assets/images/colors/color_brown.png",
      jaName: "Ni",
      sound: "sounds/colors/brown.wav",
    ),
    ItemModel(
      enName: "dusty yellow",
      image: "assets/images/colors/color_dusty_yellow.png",
      jaName: "san",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    ItemModel(
      enName: "color gray",
      image: "assets/images/colors/color_gray.png",
      jaName: "Shi",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    ItemModel(
      enName: "green",
      image: "assets/images/colors/color_green.png",
      jaName: "Go",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    ItemModel(
      enName: "red",
      image: "assets/images/colors/color_red.png",
      jaName: "Roku",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    ItemModel(
      enName: "white",
      image: "assets/images/colors/color_white.png",
      jaName: "Sebun",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    ItemModel(
      enName: "yello",
      image: "assets/images/colors/yellow.png",
      jaName: "hachi",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
  ];
  ColorPage({super.key});

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
          "Colors ",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItems(
            item: coloritem[index],
            color: const Color.fromARGB(255, 22, 226, 230),
          );
        },
        itemCount: coloritem.length,
      ),
    );
  }
}
