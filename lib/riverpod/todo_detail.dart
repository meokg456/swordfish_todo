import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/repository/sqlite_todo_repository.dart';
import 'package:todo/repository/todo_repository.dart';
import 'package:todo/riverpod/error_code/error_code.dart';
import 'package:todo/riverpod/form/todo_form.dart';
import 'package:todo/riverpod/todo.dart';

part 'todo_detail.g.dart';

@riverpod
class TodoDetail extends _$TodoDetail {
  late final TodoRepository _todoRepository = ref.watch(todoRepositoryProvider);

  @override
  TodoForm build(int? id) {
    final todo = ref.read(todoProvider);
    if (id == null) {
      return TodoForm();
    }
    return todo.requireValue.where((todo) => todo.id == id).first.toEditForm();
  }

  void updateContent(String content) {
    state = state.copyWith(content: content);
  }

  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  ErrorCode validateTitle() {
    if (state.title.isEmpty) {
      return ErrorCode.empty;
    }
    return ErrorCode.none;
  }

  bool validate() {
    return validateTitle() == ErrorCode.none;
  }

  Future<void> save() async {
    if (state.id == null) {
      await _todoRepository.addTodo(state);
    } else {
      await _todoRepository.saveTodo(state);
    }
    ref.invalidate(todoProvider);
  }
}
