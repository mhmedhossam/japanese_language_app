import 'package:flutter/material.dart';
import 'package:language_learning_fapp/screens/colorpage.dart';
import 'package:language_learning_fapp/screens/familymembers.dart';
import 'package:language_learning_fapp/screens/homapage.dart';
import 'package:language_learning_fapp/screens/numberpage.dart';
import 'package:language_learning_fapp/screens/phasespage.dart';

void main() {
  runApp(const JapaneseLanguageApp());
}

class JapaneseLanguageApp extends StatelessWidget {
  const JapaneseLanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomePage(),
        "/color": (context) => ColorPage(),
        "/phases": (context) => Phasespage(),
        "/family_member": (context) => FamilyMembersPage(),
        "/number": (context) => NumberPage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
    );
  }
}

//new basic app in the beginner
