// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoViewModel on _TodoViewModelBase, Store {
  Computed<int>? _$todoCountComputed;

  @override
  int get todoCount =>
      (_$todoCountComputed ??= Computed<int>(() => super.todoCount,
              name: '_TodoViewModelBase.todoCount'))
          .value;

  final _$todoModelAtom = Atom(name: '_TodoViewModelBase.todoModel');

  @override
  TodoModel get todoModel {
    _$todoModelAtom.reportRead();
    return super.todoModel;
  }

  @override
  set todoModel(TodoModel value) {
    _$todoModelAtom.reportWrite(value, super.todoModel, () {
      super.todoModel = value;
    });
  }

  final _$todoObservableListAtom =
      Atom(name: '_TodoViewModelBase.todoObservableList');

  @override
  ObservableList<TodoModel> get todoObservableList {
    _$todoObservableListAtom.reportRead();
    return super.todoObservableList;
  }

  @override
  set todoObservableList(ObservableList<TodoModel> value) {
    _$todoObservableListAtom.reportWrite(value, super.todoObservableList, () {
      super.todoObservableList = value;
    });
  }

  final _$textEditingControllerAtom =
      Atom(name: '_TodoViewModelBase.textEditingController');

  @override
  TextEditingController get textEditingController {
    _$textEditingControllerAtom.reportRead();
    return super.textEditingController;
  }

  @override
  set textEditingController(TextEditingController value) {
    _$textEditingControllerAtom.reportWrite(value, super.textEditingController,
        () {
      super.textEditingController = value;
    });
  }

  final _$_TodoViewModelBaseActionController =
      ActionController(name: '_TodoViewModelBase');

  @override
  void addTodo() {
    final _$actionInfo = _$_TodoViewModelBaseActionController.startAction(
        name: '_TodoViewModelBase.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$_TodoViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isTodoCompleated(TodoModel todo) {
    final _$actionInfo = _$_TodoViewModelBaseActionController.startAction(
        name: '_TodoViewModelBase.isTodoCompleated');
    try {
      return super.isTodoCompleated(todo);
    } finally {
      _$_TodoViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTodo(TodoModel todo) {
    final _$actionInfo = _$_TodoViewModelBaseActionController.startAction(
        name: '_TodoViewModelBase.updateTodo');
    try {
      return super.updateTodo(todo);
    } finally {
      _$_TodoViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todoModel: ${todoModel},
todoObservableList: ${todoObservableList},
textEditingController: ${textEditingController},
todoCount: ${todoCount}
    ''';
  }
}
