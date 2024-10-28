import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/model/todo_model.dart';
import 'package:todo/repository/sqlite_todo_repository.dart';
import 'package:todo/repository/todo_repository.dart';

part 'todo.g.dart';

@riverpod
class Todo extends _$Todo {
  late final TodoRepository _todoRepository = ref.watch(todoRepositoryProvider);

  @override
  Future<List<TodoModel>> build() async {
    return await _todoRepository.getTodos();
  }

  Future<void> setTodoCompletion(int id, bool completed) async {
    final todoList = state.requireValue;
    final index = todoList.indexWhere((todo) => todo.id == id);
    final updatedTodo = todoList[index].copyWith(completed: completed);
    todoList[index] = updatedTodo;
    await _todoRepository.saveTodo(updatedTodo.toEditForm());
    state = AsyncData(todoList);
  }
}
