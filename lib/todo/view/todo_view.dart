import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:todoapp/todo/view_model/todo_view_model.dart';

import '../locator.dart';

class TodoView extends StatelessWidget {
  TodoView({Key? key}) : super(key: key);

  final TodoViewModel todoViewModel = locator<TodoViewModel>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: ReactionBuilder(
        builder: (context) {
          return reaction(
            (_) => todoViewModel.todoObservableList.length,
            (result) {
              final messenger = ScaffoldMessenger.of(context);
              messenger.showSnackBar(
                SnackBar(
                  content: Text(
                    'Todo added: ${todoViewModel.todoObservableList.last.title}',
                  ),
                ),
              );
            },
          );
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: todoViewModel.textEditingController,
                  decoration: InputDecoration(
                    labelText: 'Todo',
                  ),
                ),
                ElevatedButton(
                  child: Text('Add'),
                  onPressed: () {
                    todoViewModel.addTodo();
                  },
                ),
                Observer(builder: (_) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: todoViewModel.todoObservableList.length,
                    itemBuilder: (context, index) {
                      var todo = todoViewModel.todoObservableList[index];
                      return CheckboxListTile(
                          title: Text(todo.title!),
                          value: todoViewModel.isTodoCompleated(todo),
                          onChanged: (value) {
                            todoViewModel.updateTodo(todo);
                          });
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
