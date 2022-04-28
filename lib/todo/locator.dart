import 'package:get_it/get_it.dart';
import 'package:todoapp/todo/view_model/todo_view_model.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => TodoViewModel());
}
