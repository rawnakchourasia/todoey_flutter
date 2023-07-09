import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a list',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckboxState: (bool? checkboxState) {
          if (checkboxState != null) {
            setState(() {
              isChecked = checkboxState;
            });
          }
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    super.key,
    required this.checkBoxState,
    required this.toggleCheckboxState,
  });

  final bool checkBoxState;
  final void Function(bool) toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: toggleCheckboxState as void Function(bool?)?,
    );
  }
}
