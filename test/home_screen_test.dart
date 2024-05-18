import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/models/task.dart';

void main() {
  test('Task can be marked as completed', () {
    final task = Task(title: 'Test Task');
    task.isDone = true;
    expect(task.isDone, true);
  });

  test('Task can be marked as incomplete', () {
    final task = Task(title: 'Test Task', isDone: true);
    task.isDone = false;
    expect(task.isDone, false);
  });
}
