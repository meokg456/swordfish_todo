import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'sqlite_database.g.dart';

Future<Database> initSqlite() async {
  return await openDatabase(
    'todo.db',
    version: 1,
    onCreate: (Database db, int version) async {
      await db.execute('''
    create table todo (
    id integer primary key autoincrement,
    title text not null,
    content text not null,
    completed integer
    )
    ''');
    },
  );
}

@Riverpod(keepAlive: true)
Database sqliteDatabase(Ref ref) {
  throw UnimplementedError();
}
