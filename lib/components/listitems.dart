import 'package:flutter/material.dart';
import 'package:language_learning_fapp/components/item_info.dart';
import '../models/item_model.dart';

class ListItems extends StatelessWidget {
  final ItemModel item;
  final Color color;
  const ListItems({super.key, required this.item, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // color: const Color.fromARGB(255, 60, 230, 233),
      ),

      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
              color: Color.fromARGB(255, 198, 238, 200),
            ),
            child: Image.asset(item.image!),
          ),
          ItemInfo(item: item, color: color, mtop: 0),
        ],
      ),
    );
  }
}
