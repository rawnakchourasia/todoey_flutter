import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [Task(name: 'name')];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void taskadd({required String taskName}) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask({required Task task}) {
    task.toggleDone();
    notifyListeners();
  }
}
