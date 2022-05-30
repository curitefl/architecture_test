import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'todos.g.dart';

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get content => text()(); // String型
}

@DriftDatabase(tables: [Todos])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  //7 データの監視
  Stream<List<Todo>> watchEntries() {
    return (select(todos)).watch();
  }

  //8 全データの取得
  Future<List<Todo>> get allTodoEntries => select(todos).get();

  //12 データの追加
  Future<int> addTodo(String content) {
    return into(todos).insert(
      TodosCompanion(content: Value(content)),
    );
  }

  //13 データの更新
  Future<int> updateTodo(Todo todo, String content) {
    return (update(todos)..where((tbl) => tbl.id.equals(todo.id))).write(
      TodosCompanion(content: Value(content)),
    );
  }

  //14 データの削除
  Future<int> deleteTodo(Todo todo) {
    return (delete(todos)..where((tbl) => tbl.id.equals(todo.id))).go();
  }

  Future<Todo> getTodoEntry(Todo todo) async {
    return await (select(todos)..where((tbl) => tbl.id.equals(todo.id))).getSingle();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(
        () async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));
      return NativeDatabase(file);
    },
  );
}
