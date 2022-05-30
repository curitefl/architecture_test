import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_view_model.freezed.dart';

@freezed
abstract class TopViewModel with _$TopViewModel {
  const factory TopViewModel({
    required final bool isComplete,
  }) = _TopViewModel;
}
