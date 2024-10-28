import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/app/logging_observer.dart';
import 'package:todo/app/todo_app.dart';
import 'package:todo/data_source/sqlite_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = await initSqlite();

  runApp(ProviderScope(
    overrides: [
      sqliteDatabaseProvider.overrideWithValue(db),
    ],
    observers: [LoggingObserver()],
    child: const TodoApp(),
  ));
}
