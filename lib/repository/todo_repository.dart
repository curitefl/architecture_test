
import 'package:architecture_test/service/data_store/todos.dart';

class TodoRepository {
  final MyDatabase _myDatabase;

  TodoRepository(final this._myDatabase);

  Stream<List<Todo>> watchEntries() {
    return _myDatabase.watchEntries();
  }

  Future<int> updateTodo(Todo todo, String content) {
    return _myDatabase.updateTodo(todo, content);
  }

  Future<void> addTodo(String content) async {
    await _myDatabase.addTodo(content);
  }

  Future<List<Todo>> get allTodoEntries {
    return _myDatabase.allTodoEntries;
  }

  Future<int> deleteTodo(Todo todo) {
    return _myDatabase.deleteTodo(todo);
  }
}