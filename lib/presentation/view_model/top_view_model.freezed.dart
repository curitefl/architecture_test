// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopViewModel {
  bool get isComplete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopViewModelCopyWith<TopViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopViewModelCopyWith<$Res> {
  factory $TopViewModelCopyWith(
          TopViewModel value, $Res Function(TopViewModel) then) =
      _$TopViewModelCopyWithImpl<$Res>;
  $Res call({bool isComplete});
}

/// @nodoc
class _$TopViewModelCopyWithImpl<$Res> implements $TopViewModelCopyWith<$Res> {
  _$TopViewModelCopyWithImpl(this._value, this._then);

  final TopViewModel _value;
  // ignore: unused_field
  final $Res Function(TopViewModel) _then;

  @override
  $Res call({
    Object? isComplete = freezed,
  }) {
    return _then(_value.copyWith(
      isComplete: isComplete == freezed
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TopViewModelCopyWith<$Res>
    implements $TopViewModelCopyWith<$Res> {
  factory _$$_TopViewModelCopyWith(
          _$_TopViewModel value, $Res Function(_$_TopViewModel) then) =
      __$$_TopViewModelCopyWithImpl<$Res>;
  @override
  $Res call({bool isComplete});
}

/// @nodoc
class __$$_TopViewModelCopyWithImpl<$Res>
    extends _$TopViewModelCopyWithImpl<$Res>
    implements _$$_TopViewModelCopyWith<$Res> {
  __$$_TopViewModelCopyWithImpl(
      _$_TopViewModel _value, $Res Function(_$_TopViewModel) _then)
      : super(_value, (v) => _then(v as _$_TopViewModel));

  @override
  _$_TopViewModel get _value => super._value as _$_TopViewModel;

  @override
  $Res call({
    Object? isComplete = freezed,
  }) {
    return _then(_$_TopViewModel(
      isComplete: isComplete == freezed
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TopViewModel implements _TopViewModel {
  const _$_TopViewModel({required this.isComplete});

  @override
  final bool isComplete;

  @override
  String toString() {
    return 'TopViewModel(isComplete: $isComplete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopViewModel &&
            const DeepCollectionEquality()
                .equals(other.isComplete, isComplete));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isComplete));

  @JsonKey(ignore: true)
  @override
  _$$_TopViewModelCopyWith<_$_TopViewModel> get copyWith =>
      __$$_TopViewModelCopyWithImpl<_$_TopViewModel>(this, _$identity);
}

abstract class _TopViewModel implements TopViewModel {
  const factory _TopViewModel({required final bool isComplete}) =
      _$_TopViewModel;

  @override
  bool get isComplete => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TopViewModelCopyWith<_$_TopViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
