import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:todoapp/todo/model/todo_model.dart';
part 'todo_view_model.g.dart';

class TodoViewModel = _TodoViewModelBase with _$TodoViewModel;

abstract class _TodoViewModelBase with Store {

  @observable
  TodoModel todoModel = TodoModel();
  
  @observable
  ObservableList<TodoModel> todoObservableList = ObservableList<TodoModel>();

  @computed
  int get todoCount => todoObservableList.length;

  @observable
  TextEditingController textEditingController = TextEditingController();

  @action
  void addTodo() {
    todoModel = TodoModel(
      id: todoCount,
      title: textEditingController.text,
      completed: false,
    );

    todoObservableList.add(todoModel);

    textEditingController.clear();
  }

  @action
  bool isTodoCompleated(TodoModel todo) =>
      todoObservableList[todo.id!].completed == true;

  @action
  void updateTodo(TodoModel todo) {
    todoModel = TodoModel(
      id: todo.id,
      title: todo.title,
      completed: !todo.completed!,
    );
    todoObservableList[todo.id!] = todoModel;
  }
}
