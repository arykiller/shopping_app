class MyProducts {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imagePath;
  bool? isFavorite;

  MyProducts({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imagePath,
    this.isFavorite,
  });
}
