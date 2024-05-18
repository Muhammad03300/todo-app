import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTask;

  AddTaskScreen({required this.addTask});

  @override
  Widget build(BuildContext context) {
    String taskTitle = '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                taskTitle = value;
              },
              decoration: InputDecoration(labelText: 'Task Title'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text('Add'),
              onPressed: () {
                addTask(taskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
