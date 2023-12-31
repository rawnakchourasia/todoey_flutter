import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTile,
      required this.checkBoxCallBack,
      required this.deleteTask});

  final bool isChecked;
  final String taskTile;
  final Function checkBoxCallBack;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask as void Function()?,
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          value: isChecked,
          onChanged: checkBoxCallBack as void Function(bool?)?),
    );
  }
}
