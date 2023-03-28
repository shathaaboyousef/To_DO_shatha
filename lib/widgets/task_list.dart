// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  final bool isChecked;
  final String teskTitle;
  final void Function(bool?) checkboxchange;
  final void Function() listtiledelet;
  TasksTitle(
      {required this.isChecked,
      required this.teskTitle,
      required this.checkboxchange,
      required this.listtiledelet});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        teskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            fontSize: 18,
            color: Colors.indigo,
            fontWeight: FontWeight.bold),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkboxchange,
      ),
      onLongPress: listtiledelet,
    );
  }
}
