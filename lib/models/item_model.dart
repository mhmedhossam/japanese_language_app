import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String enName;
  final String jaName;
  String? image;
  final String sound;

  ItemModel({
    required this.enName,
    this.image,
    required this.jaName,
    required this.sound,
  });

  void playsound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
