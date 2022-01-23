class Item {
  final String id;
  final String name;
  final String description;
  final String color;
  final String image;
  final num price;

  Item(
      //use curly braces to make it named constructor
      {required this.id,
      required this.name,
      required this.description,
      required this.color,
      required this.image,
      required this.price});
}
