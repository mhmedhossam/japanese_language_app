class ItemModel {
  final String enName;
  final String jaName;
  String? image;
  final String sound;

  ItemModel(
      {required this.enName,
      this.image,
      required this.jaName,
      required this.sound});
}
