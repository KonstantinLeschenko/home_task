import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_task/mock_api.dart';

void main() async {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showAllTasks = true;
  late Stream myStream;
  Status status = Status.inProgress;
  final controllerTaskTitle = TextEditingController();
  final controllerTaskDescription = TextEditingController();
  late int count;

  @override
  void dispose() {
    controllerTaskTitle.dispose();
    controllerTaskDescription.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String text = showAllTasks ? 'All tasks' : 'Total tasks with $status';
    getCount();
    return Scaffold(
      appBar: AppBar(
        title: Text('$text $count'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(child: Text('Settings')),
            TextButton(
                onPressed: () {
                  setState(() {
                    showAllTasks = true;
                  });
                  Navigator.pop(context);
                },
                child: const Text('All tasks')),
            TextButton(
                onPressed: () {
                  setState(() {
                    showAllTasks = false;
                    status = Status.pending;
                  });
                  Navigator.pop(context);
                },
                child: const Text('Pending')),
            TextButton(
                onPressed: () {
                  setState(() {
                    showAllTasks = false;
                    status = Status.inProgress;
                  });
                  Navigator.pop(context);
                },
                child: const Text('InProgress')),
            TextButton(
                onPressed: () {
                  setState(() {
                    showAllTasks = false;
                    status = Status.completed;
                  });
                  Navigator.pop(context);
                },
                child: const Text('Completed')),
          ],
        ),
      ),
      body: StreamBuilder(
          stream: myStream = showAllTasks
              ? Stream.fromFutures([MockAPI.getTasks()])
              : Stream.fromFutures([MockAPI.getTasksByStatus(status)]),
          builder: (_, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (_, int index) {
                    return Dismissible(
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        MockAPI().deleteTask(index);
                      },
                      child: ListTile(
                        title: Text(
                            '${snapshot.data?[index].id} _ ${snapshot.data?[index].title}'),
                        subtitle: Text('${snapshot.data?[index].description}'),
                        trailing: Text('${snapshot.data?[index].status}'),
                      ),
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Add a new Task'),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return Column(
                children: [
                  TextField(
                    controller: controllerTaskTitle,
                    decoration: const InputDecoration(
                      hintText: 'New Task Title',
                    ),
                  ),
                  TextField(
                    controller: controllerTaskDescription,
                    decoration: const InputDecoration(
                      hintText: 'New Task Description',
                    ),
                  ),
                  const SizedBox(height: 20),
                  RadioListTile(
                    value: Status.pending,
                    groupValue: status,
                    title: const Text('Pending'),
                    onChanged: (value) =>
                        setState(() => status = Status.pending),
                  ),
                  RadioListTile(
                    value: Status.inProgress,
                    groupValue: status,
                    title: const Text('InProgress'),
                    onChanged: (value) =>
                        setState(() => status = Status.inProgress),
                  ),
                  RadioListTile(
                    value: Status.completed,
                    groupValue: status,
                    title: const Text('Completed'),
                    onChanged: (value) =>
                        setState(() => status = Status.completed),
                  ),
                ],
              );
            }),
            actions: [
              TextButton(
                  onPressed: () {
                    controllerTaskTitle.clear();
                    controllerTaskDescription.clear();
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () {
                    if (controllerTaskTitle.text != '' &&
                        controllerTaskDescription.text != '') {
                      MockAPI().addTask(controllerTaskTitle.text,
                          controllerTaskDescription.text, status);
                      setState(() {});
                      controllerTaskTitle.clear();
                      controllerTaskDescription.clear();
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('OK')),
            ],
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }

  getCount() {
    showAllTasks
        ? count = tasks.length
        : count = MockAPI().countTasksWithStatus(tasks, status);
  }
}
