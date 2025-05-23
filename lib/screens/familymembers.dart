import 'package:flutter/material.dart';
import 'package:language_learning_fapp/screens/homapage.dart';

import '../components/listitems.dart';
import '../components/newcomponent.dart';
import '../models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  final List<ItemModel> familymember = [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jaName: 'ichi',
      enName: 'father',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      jaName: 'ichi',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jaName: 'ichi',
      enName: 'daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      jaName: 'son',
      enName: 'son',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jaName: 'ichi',
      enName: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jaName: 'ichi',
      enName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jaName: 'ichi',
      enName: 'old brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jaName: 'ichi',
      enName: 'old sister',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jaName: 'ichi',
      enName: 'young brother',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jaName: 'ichi',
      enName: 'younger sister',
    ),
  ];
  FamilyMembersPage({super.key});

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
          "family members",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListItems(
            item: familymember[index],
            color: const Color.fromARGB(255, 118, 157, 243),
          );
        },
        itemCount: familymember.length,
      ),
    );
  }
}
