import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import './../models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
    required this.tasks,
  });
  final List<Task> tasks;
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTile: widget.tasks[index].name,
          checkBoxCallBack: (checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
