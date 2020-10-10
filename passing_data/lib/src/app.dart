import 'package:flutter/material.dart';
import 'package:passing_data/models/todo.dart';
import 'package:passing_data/screens/todo_screen.dart';

class App extends StatelessWidget {
  final List<Todo> todos = List<Todo>.generate(
    20,
    (i) => Todo(
      'Todo $i',
      'A description of what needs to be done for Todo $i',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodosScreen(
        todos: todos,
      ),
    );
  }
}
