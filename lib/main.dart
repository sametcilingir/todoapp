import 'package:flutter/material.dart';
import 'package:todoapp/todo/locator.dart';
import 'package:todoapp/todo/view/todo_view.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: TodoView(),
    );
  }
}
