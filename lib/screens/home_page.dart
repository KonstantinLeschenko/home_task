import 'package:flutter/material.dart';
import 'package:home_task/data/art_work.dart';
import '../widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ArtWork> myArts = Artworks().arts;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Works'),
      ),
      drawer: MyDrawer(),
      body: GridView.builder(
          itemCount: myArts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                myArts[index].assetPath,
                fit: BoxFit.fill,
              ),
            );
          }),
    );
  }
}
