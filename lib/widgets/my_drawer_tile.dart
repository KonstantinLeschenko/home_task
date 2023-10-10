import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyDrawerTile extends StatelessWidget {
  String avatarText;
  String description;
  final function;

  MyDrawerTile(
      {super.key,
      required this.avatarText,
      required this.description,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Chip(
          label: Text(description),
          avatar: CircleAvatar(
            child: Text(avatarText),
          ),
        ),
      ),
    );
  }
}
