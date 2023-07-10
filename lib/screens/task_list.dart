import 'package:flutter/material.dart';
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
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTile: taskData.tasks[index].name,
              checkBoxCallBack: (checkBoxState) {
                // setState(() {
                //   taskData.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
