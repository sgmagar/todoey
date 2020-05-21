import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function checkBoxCallback;

  TasksList({@required this.tasks, @required this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxCallback: (value) {
            checkBoxCallback(value, index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
