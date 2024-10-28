import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo/data_source/sqlite_database.dart';
import 'package:todo/model/todo_model.dart';
import 'package:todo/repository/todo_repository.dart';
import 'package:todo/riverpod/form/todo_form.dart';

part 'sqlite_todo_repository.g.dart';

@Riverpod(keepAlive: true)
TodoRepository todoRepository(Ref ref) =>
    SqliteTodoRepository(ref.watch(sqliteDatabaseProvider));

class SqliteTodoRepository implements TodoRepository {
  final Database _db;
  final _tableName = 'todo';

  SqliteTodoRepository(this._db);

  @override
  Future<List<TodoModel>> getTodos() async {
    final data = await _db.query(_tableName);
    return data.map((todoJson) => TodoModel.fromJson(todoJson)).toList();
  }

  @override
  Future<void> addTodo(TodoForm form) async {
    await _db.insert(_tableName, form.toJson());
  }

  @override
  Future<void> saveTodo(TodoForm form) async {
    await _db.update(
      _tableName,
      form.toJson(),
      where: 'id = ?',
      whereArgs: [form.id],
    );
  }
}
