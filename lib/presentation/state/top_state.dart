import 'package:architecture_test/presentation/view_model/top_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopState extends StateNotifier<TopViewModel> {
  TopState(final TopViewModel state) : super(state);

  void setSwitch(final bool isComplete) {
    state = state.copyWith(
      isComplete: isComplete,
    );
  }
}