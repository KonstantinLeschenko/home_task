import 'package:flutter/material.dart';
import 'package:home_task/my_list_tile.dart';
import 'package:home_task/recipe.dart';

class MyListBody extends StatelessWidget {
  const MyListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: FavoritRecipes().favoritRecipes.length,
        itemBuilder: (BuildContext context, int index) {
          //final item = FavoritRecipes().favoritRecipes[index].assetPath;
          return Dismissible(
            key: UniqueKey(),
            onDismissed: (direction) {
              FavoritRecipes().favoritRecipes.removeAt(index);
            },
            child: MyListTile(
                assetName: FavoritRecipes().favoritRecipes[index].assetPath,
                recipe: FavoritRecipes().favoritRecipes[index].name,
                time: FavoritRecipes().favoritRecipes[index].time),
          );
        });
  }
}
