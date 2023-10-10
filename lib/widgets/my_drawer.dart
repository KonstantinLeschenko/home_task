import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});
  List<String> categories = [
    'baroque',
    'cubism',
    'landscape',
    'renaissance',
    'surrealism'
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(categories[index]);
          }),
    );
  }
}
