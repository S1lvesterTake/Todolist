import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_provider/screens/home_screen.dart';
import 'package:todo_provider/providers/todo_model.dart';


void main()=> runApp(TodosApp());


class TodosApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      builder: (context)=>TodosModel(),
      child: MaterialApp(
        title: 'Todos',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}