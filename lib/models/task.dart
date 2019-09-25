import 'package:flutter/material.dart';

class Task {
  String title;
  bool completed;

  Task({@required this.title, this.completed=false});

  //our method
  void toggleCompleted(){
    completed = !completed;
  }
}