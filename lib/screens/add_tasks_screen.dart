// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';


class AddTasksScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTasksScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add tasks ',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.indigo[400],
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 30,
          ),
          Consumer<TaskData>(builder: (context, task, child) {
            return TextButton(
              onPressed: () {
                task.addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
                primary: Colors.white,
              ),
            );
          })
        ],
      ),
    );
  }
}
