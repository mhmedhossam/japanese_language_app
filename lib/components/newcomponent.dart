import 'package:flutter/material.dart';

import 'bottom_nav_curve_painter.dart';
import 'buttonbar_icon.dart';

class BottomNavBarCurvedFb1 extends StatefulWidget {
  const BottomNavBarCurvedFb1({super.key});

  @override
  _BottomNavBarCurvedFb1State createState() => _BottomNavBarCurvedFb1State();
}

class _BottomNavBarCurvedFb1State extends State<BottomNavBarCurvedFb1> {
  @override
  Widget build(BuildContext context) {
    double height = 56;
    const primaryColor = Colors.orange;
    const secondaryColor = Colors.black54;
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, height + 6),
              painter: BottomNavCurvePainter(),
            ),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: const Color.fromARGB(137, 75, 74, 74),
              elevation: 0.2,
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/");
              },
              child: const Icon(Icons.home, color: Colors.black, size: 30),
            ),
          ),
          SizedBox(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonbarIcon(
                  text: "Number",
                  icon: Icons.numbers_sharp,
                  selected: true,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/number",
                      (route) => false,
                    );
                  },
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                ButtonbarIcon(
                  text: "family_members",
                  icon: Icons.family_restroom,
                  selected: false,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/family_member",
                      (route) => false,
                    );
                  },
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                const SizedBox(width: 56),
                ButtonbarIcon(
                  text: "phases",
                  icon: Icons.wordpress_sharp,
                  selected: false,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/phases",
                      (route) => false,
                    );
                  },
                  defaultColor: const Color.fromARGB(137, 0, 0, 0),
                  selectedColor: primaryColor,
                ),
                ButtonbarIcon(
                  text: "color",
                  icon: Icons.color_lens,
                  selected: false,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/color",
                      (route) => false,
                    );
                  },
                  selectedColor: const Color.fromARGB(255, 6, 201, 207),
                  defaultColor: secondaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
