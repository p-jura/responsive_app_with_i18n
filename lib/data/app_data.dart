class TileData {
  const TileData({
    required this.title,
    required this.image,
    required this.time,
    required this.description,
  });

  final String title;
  final String image;
  final String description;
  final String time;

  static final  List<TileData> data = [
    TileData(
        title: 'Lorem ipsum dolor sit amet',
        image: 'assets/art1.jpg',
        time: DateTime.now().toString(),
        description:
            'Nullam et ipsum sodales, elementum diam non, tempus ligula. Proin condimentum dignissim augue vel dictum'),
    TileData(
        title: 'Aliquam sit amet cursus nibh',
        image: 'assets/art2.jpg',
        time: DateTime.now().subtract(const Duration(days: 5)).toString(),
        description:
            'Aliquam commodo risus nisl, a convallis elit gravida vel. Aliquam malesuada est vulputate dolor dignissim, in porttitor orci malesuada.'),
    TileData(
        title: 'Mauris mollis varius commodo',
        image: 'assets/art3.jpg',
        time: DateTime.now().subtract(const Duration(days: 7)).toString(),
        description:
            'Sed mollis nisl non risus sagittis cursus. Duis sed mi ut nisl consequat convallis. Curabitur ultrices orci vitae turpis hendrerit euismod.'),
  ];
}
