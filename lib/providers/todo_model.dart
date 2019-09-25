//this package to ensure our getter cannot be manipulated in any way form outside TodoModel
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todo_provider/models/task.dart';


class TodosModel extends ChangeNotifier {
  final List<Task> _tasks = [
    // Task(title: 'Finish the app'),
    // Task(title: 'Write the blog post'),
    // Task(title: 'Share with comunity'),
  ];

  UnmodifiableListView<Task> get allTasks => UnmodifiableListView(_tasks);
  UnmodifiableListView<Task> get incompleteTasks =>
    UnmodifiableListView(_tasks.where((todo)=>!todo.completed));
  UnmodifiableListView<Task> get completedTasks =>
    UnmodifiableListView(_tasks.where((todo)=>todo.completed));

  //method
  void addTodo(Task task){
    _tasks.add(task);
    NotificationListener();
  }

  void toggleTodo(Task task){
    final taskIndex = _tasks.indexOf(task);
    _tasks[taskIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteTodo(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}