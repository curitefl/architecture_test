import 'package:architecture_test/service/data_store/todos.dart';
import 'package:architecture_test/use_case/todo_use_case.dart';

class TodoPresenter {
  final TodoUseCase _todoUseCase;

  TodoPresenter(final this._todoUseCase);

  Stream<List<Todo>> watchEntries() {
    return _todoUseCase.watchEntries();
  }

  Future<int> updateTodo(Todo todo, String content) {
    return _todoUseCase.updateTodo(todo, content);
  }

  Future<void> addTodo(String content) async {
    await _todoUseCase.addTodo(content);
  }

  Future<List<Todo>> get allTodoEntries {
    return _todoUseCase.allTodoEntries;
  }

  Future<int> deleteTodo(Todo todo) {
    return _todoUseCase.deleteTodo(todo);
  }
}