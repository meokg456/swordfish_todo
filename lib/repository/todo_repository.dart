import 'package:todo/model/todo_model.dart';
import 'package:todo/riverpod/form/todo_form.dart';

abstract class TodoRepository {
  Future<List<TodoModel>> getTodos();
  Future<void> addTodo(TodoForm form);
  Future<void> saveTodo(TodoForm form);
}
