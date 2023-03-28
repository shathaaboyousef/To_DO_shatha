// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/widgets/task_list.dart';

import '../models/task_data.dart';


class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, TaskData, child) {
      return ListView.builder(
          itemCount: TaskData.tasks.length,
          itemBuilder: (context, index) {
            return TasksTitle(
                isChecked: TaskData.tasks[index].isDone,
                teskTitle: TaskData.tasks[index].name,
                checkboxchange: (newValue) {
                  TaskData.updateTask(TaskData.tasks[index]);
                },
                listtiledelet: () {
                  TaskData.deleteTask(TaskData.tasks[index]);
                });
          });
    });
  }
}
