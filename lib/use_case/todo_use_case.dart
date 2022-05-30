import 'package:architecture_test/presentation/state/top_state.dart';
import 'package:architecture_test/presentation/view_model/top_view_model.dart';
import 'package:architecture_test/repository/todo_repository.dart';
import 'package:architecture_test/service/data_store/todos.dart';

class TodoUseCase {
  final TodoRepository _todoRepository;
  final TopViewModel _topViewModel;
  final TopState _topState;

  TodoUseCase(
    final this._todoRepository,
    final this._topViewModel,
    final this._topState,
  );

  Stream<List<Todo>> watchEntries() {
    return _todoRepository.watchEntries();
  }

  Future<int> updateTodo(Todo todo, String content) {
    return _todoRepository.updateTodo(todo, content);
  }

  Future<void> addTodo(String content) async {
    await _todoRepository.addTodo(content);
  }

  Future<List<Todo>> get allTodoEntries {
    return _todoRepository.allTodoEntries;
  }

  Future<int> deleteTodo(Todo todo) {
    return _todoRepository.deleteTodo(todo);
  }
}
