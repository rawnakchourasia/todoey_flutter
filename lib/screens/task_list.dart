import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

import './../models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task task = taskData.tasks[index];
            return TaskTile(
                isChecked: task.isDone,
                taskTile: task.name,
                checkBoxCallBack: (checkBoxState) {
                  taskData.updateTask(task: task);
                },
                deleteTask: () {
                  taskData.deleteTask(index: index);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
