import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/item_model.dart';

class ListItems extends StatelessWidget {
  final ItemModel item;

  const ListItems({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromARGB(255, 60, 230, 233),
      ),
      width: double.infinity,
      height: 100,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
            color: Color.fromARGB(255, 198, 238, 200),
          ),
          child: Image.asset(item.image!),
        ),
        const Spacer(
          flex: 1,
        ),
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
            ]),
        const Spacer(
          flex: 1,
        ),
        const Spacer(
          flex: 11,
        ),
        IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(
                AssetSource(item.sound),
              );
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            )),
        const Spacer(
          flex: 1,
        )
      ]),
    );
  }
}
