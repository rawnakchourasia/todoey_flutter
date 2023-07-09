import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import './../models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Hello'),
    Task(name: 'World'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTile: tasks[index].name,
          checkBoxCallBack: (checkBoxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );

    // ListView(
    //   children: [
    //     TaskTile(
    //       isChecked: tasks[0].isDone,
    //       taskTile: tasks[0].name,
    //     ),
    //     TaskTile(
    //       isChecked: tasks[1].isDone,
    //       taskTile: tasks[1].name,
    //     ),
    //   ],
    // );
  }
}
