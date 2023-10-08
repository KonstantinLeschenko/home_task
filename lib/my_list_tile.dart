import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyListTile extends StatelessWidget {
  String assetName;
  String recipe;
  String time;

  MyListTile(
      {super.key,
      required this.assetName,
      required this.recipe,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            child: Image.asset(assetName),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(recipe, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), 
              Row(
                children: [
                  const Icon(Icons.alarm),
                  Text(time),
                ],
              ),
              ]
          )
        ],
      ),
    );
  }
}
