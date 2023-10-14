import 'package:flutter/material.dart';
import 'package:home_task/my_grid_tile.dart';

import 'recipe.dart';

class MyGridBody extends StatelessWidget {
  const MyGridBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: FavoritRecipes().favoritRecipes.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return MyGridTile(
              assetName: FavoritRecipes().favoritRecipes[index].assetPath,
              recipe: FavoritRecipes().favoritRecipes[index].name,
              time: FavoritRecipes().favoritRecipes[index].time);
        });
  }
}
