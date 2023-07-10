import 'package:flutter/material.dart';
import './../models/task_data.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late String taskText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xff757575),
      decoration: BoxDecoration(
        color: const Color(0xff757575),
        border: Border.all(
          color: const Color(0xff757575),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Text(
              'Add Task',
              style: TextStyle(fontSize: 20, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 5)),
              ),
              onChanged: (value) {
                setState(() {
                  taskText = value;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              style: flatButtonStyle,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .taskadd(taskName: taskText);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 20),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.white,
  backgroundColor: Colors.lightBlueAccent,
  minimumSize: const Size(double.infinity, 60),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);
