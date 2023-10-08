import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyGridTile extends StatelessWidget {
  String assetName;
  String recipe;
  String time;

  MyGridTile(
      {super.key,
      required this.assetName,
      required this.recipe,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(assetName, fit: BoxFit.fill),
        ),
        Text(recipe,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.alarm),
            Text(time),
          ],
        ),
      ],
    );
  }
}

// ?
