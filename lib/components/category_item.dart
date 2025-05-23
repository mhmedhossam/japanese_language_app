import 'package:flutter/material.dart';
import 'package:language_learning_fapp/screens/homapage.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  final String text;
  final Color color;
  final String? page;
  const CategoryItem({
    required this.text,
    required this.color,
    super.key,
    this.page,
  });

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(context, page!, (route) => false);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        alignment: Alignment.center,
        height: 85,
        width: 172,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
