import 'package:flutter/material.dart';
import 'my_grid_body.dart';
import 'my_list_body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isListView = true;

  changeView() {
    setState(() {
      isListView = !isListView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home_task_lesson_8'),
      ),
      body: isListView ? const MyListBody() : const MyGridBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: changeView,
        child: Icon(isListView ? Icons.grid_view_sharp : Icons.list_sharp),
      ),
    );
  }
}
