import 'package:flutter/material.dart';
import 'package:language_learning_fapp/screens/numberpage.dart';
import 'package:language_learning_fapp/screens/phasespage.dart';

import '../components/category_item.dart';
import '../components/newcomponent.dart';
import 'colorpage.dart';
import 'familymembers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      backgroundColor: const Color.fromARGB(255, 224, 242, 241),
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.language),
            SizedBox(width: 8),
            Text(
              "Language learning App ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryItem(
                  page: "/number",
                  color: const Color.fromARGB(255, 84, 142, 243),
                  text: "Numbers",
                ),
                CategoryItem(
                  page: "/family_member",
                  color: const Color.fromARGB(255, 44, 46, 50),
                  text: "Family\nMembers",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryItem(
                  page: "/color",
                  color: const Color.fromARGB(255, 39, 138, 168),
                  text: "Colors",
                ),
                CategoryItem(
                  page: "/phases",
                  color: const Color.fromARGB(255, 10, 184, 152),
                  text: "Phrases",
                ),
              ],
            ),
            Image.asset("assets/images/appimage/app1.png", height: 350),
          ],
        ),
      ),
    );
  }
}
