import 'package:flutter/material.dart';
import '../models/item_model.dart';

class ItemInfo extends StatelessWidget {
  final ItemModel item;
  final Color color;
  final double mtop;
  const ItemInfo({
    super.key,
    required this.item,
    required this.color,
    required this.mtop,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 10, top: mtop),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.jaName,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    item.enName,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 1),
            const Spacer(flex: 11),

            IconButton(
              onPressed: () {
                item.playsound();
              },
              icon: const Icon(Icons.play_arrow, color: Colors.white),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
