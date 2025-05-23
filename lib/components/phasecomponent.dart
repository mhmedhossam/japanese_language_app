import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class PhasesItems extends StatelessWidget {
  final ItemModel item;

  const PhasesItems({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 90, 238, 194),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: double.infinity,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 1),
          Column(
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
          const Spacer(flex: 1),
          const Spacer(flex: 11),

          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(item.sound));
            },
            icon: const Icon(Icons.play_arrow, color: Colors.white),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
