class ArtWork {
  String category;
  String name;
  String description;
  DateTime creationDate;
  String assetPath;

  ArtWork(
      {required this.category,
      required this.name,
      required this.description,
      required this.creationDate,
      required this.assetPath});
}

class Artworks {
  List<ArtWork> arts = [
    ArtWork(
        category: 'Baroque',
        name: 'b_1',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/b_1.jpg'),
    ArtWork(
        category: 'Baroque',
        name: 'b_2',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/b_2.jpg'),
    ArtWork(
        category: 'Baroque',
        name: 'b_3',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/b_3.jpg'),
    ArtWork(
        category: 'Baroque',
        name: 'b_4',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/b_4.jpg'),
    ArtWork(
        category: 'Baroque',
        name: 'b_5',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/b_5.jpg'),
    ArtWork(
        category: 'Cubism',
        name: 'c_1',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/c_1.jpg'),
    ArtWork(
        category: 'Cubism',
        name: 'c_2',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/c_2.jpg'),
    ArtWork(
        category: 'Cubism',
        name: 'c_3',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/c_3.jpg'),
    ArtWork(
        category: 'Cubism',
        name: 'c_4',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/c_4.jpg'),
    ArtWork(
        category: 'Cubism',
        name: 'c_5',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/c_5.jpg'),
    ArtWork(
        category: 'Landscape',
        name: 'l_1',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/l_1.jpg'),
    ArtWork(
        category: 'Landscape',
        name: 'l_2',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/l_2.jpg'),
    ArtWork(
        category: 'Landscape',
        name: 'l_3',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/l_3.jpg'),
    ArtWork(
        category: 'Landscape',
        name: 'l_4',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/l_4.jpg'),
    ArtWork(
        category: 'Landscape',
        name: 'l_5',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/l_5.jpg'),
    ArtWork(
        category: 'Renaissance',
        name: 'r_1',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/r_1.jpg'),
    ArtWork(
        category: 'Renaissance',
        name: 'r_2',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/r_2.jpg'),
    ArtWork(
        category: 'Renaissance',
        name: 'r_3',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/r_3.jpg'),
    ArtWork(
        category: 'Renaissance',
        name: 'r_4',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/r_4.jpg'),
    ArtWork(
        category: 'Renaissance',
        name: 'r_5',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/r_5.jpg'),
    ArtWork(
        category: 'Surrealism',
        name: 's_1',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/s_1.jpg'),
    ArtWork(
        category: 'Surrealism',
        name: 's_2',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/s_2.jpg'),
    ArtWork(
        category: 'Surrealism',
        name: 's_3',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/s_3.jpg'),
    ArtWork(
        category: 'Surrealism',
        name: 's_4',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/s_4.jpg'),
    ArtWork(
        category: 'Surrealism',
        name: 's_5',
        description: 'description',
        creationDate: DateTime(2023, 10, 8),
        assetPath: 'assets/s_5.jpg'),
  ];
}
