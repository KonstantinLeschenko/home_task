class Task {
  final int id;
  String title;
  String description;
  Status status;

  Task({
    required this.id,
    required this.title,
    required this.description,
    this.status = Status.pending,
  });
}

enum Status { pending, inProgress, completed }

List<Task> tasks = [
  Task(
    id: 1,
    title: "Вивчити Flutter",
    description: "Прочитати документацію",
  ),
  Task(
      id: 2,
      title: "Розробити додаток",
      description: "Використати RxDart",
      status: Status.inProgress),
  Task(
      id: 3,
      title: "Провести тестування",
      description: "Запитати відгуки у користувачів"),
];

class MockAPI {
  static Future<List<Task>> getTasks() async {
    await Future.delayed(const Duration(seconds: 1));
    return tasks;
  }

  static Future<List<Task>> getTasksByStatus(Status status) async {
    await Future.delayed(const Duration(seconds: 1));
    return tasks.where((element) => element.status == status).toList();
  }

  addTask(String taskTitle, String taskDescription, Status taskStatus) {
    tasks.add(Task(
        id: genId(),
        title: taskTitle,
        description: taskDescription,
        status: taskStatus));
  }

  int countTasksWithStatus(List<Task> tasks, Status status) {
    return tasks.where((task) => task.status == status).length;
  }

  deleteTask(int index) async {
    tasks.removeAt(index);
  }

  updateTask(int index, String newTitle, String newDescription,
      Status newStatus) async {
    tasks[index].title = newTitle;
    tasks[index].description = newDescription;
    tasks[index].status = newStatus;
  }

  genId() {
    int id = 0;
    for (int i = 0; i < tasks.length; i++) {
      if (id < tasks[i].id) {
        id = tasks[i].id;
      }
    }
    return ++id;
  }
}
