import 'package:architecture_test/presentation/presenter/todo_presenter.dart';
import 'package:architecture_test/presentation/state/top_state.dart';
import 'package:architecture_test/presentation/view_model/top_view_model.dart';
import 'package:architecture_test/repository/todo_repository.dart';
import 'package:architecture_test/service/data_store/todos.dart';
import 'package:architecture_test/use_case/todo_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final myDatabaseProvider = Provider((ref) => MyDatabase());

final todoRepositoryProvider = Provider(
  (ref) => TodoRepository(
    ref.watch(myDatabaseProvider),
  ),
);

final todoUseCaseProvider = Provider(
  (ref) => TodoUseCase(
    ref.watch(todoRepositoryProvider),
    ref.watch(topStateProvider),
    ref.watch(topStateProvider.notifier),
  ),
);

final todoPresenterProvider = Provider(
  (ref) => TodoPresenter(
    ref.watch(todoUseCaseProvider),
  ),
);

final topStateProvider = StateNotifierProvider<TopState, TopViewModel>(
  (ref) => TopState(
    const TopViewModel(isComplete: false),
  ),
);
