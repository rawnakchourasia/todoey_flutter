import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTile,
      required this.checkBoxCallBack});

  final bool isChecked;
  final String taskTile;
  final Function checkBoxCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
