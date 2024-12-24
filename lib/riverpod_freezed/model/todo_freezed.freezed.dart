// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoFreezed _$TodoFreezedFromJson(Map<String, dynamic> json) {
  return _TodoFreezed.fromJson(json);
}

/// @nodoc
mixin _$TodoFreezed {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this TodoFreezed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoFreezedCopyWith<TodoFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoFreezedCopyWith<$Res> {
  factory $TodoFreezedCopyWith(
          TodoFreezed value, $Res Function(TodoFreezed) then) =
      _$TodoFreezedCopyWithImpl<$Res, TodoFreezed>;
  @useResult
  $Res call({String id, String title, bool isCompleted});
}

/// @nodoc
class _$TodoFreezedCopyWithImpl<$Res, $Val extends TodoFreezed>
    implements $TodoFreezedCopyWith<$Res> {
  _$TodoFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoFreezedImplCopyWith<$Res>
    implements $TodoFreezedCopyWith<$Res> {
  factory _$$TodoFreezedImplCopyWith(
          _$TodoFreezedImpl value, $Res Function(_$TodoFreezedImpl) then) =
      __$$TodoFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, bool isCompleted});
}

/// @nodoc
class __$$TodoFreezedImplCopyWithImpl<$Res>
    extends _$TodoFreezedCopyWithImpl<$Res, _$TodoFreezedImpl>
    implements _$$TodoFreezedImplCopyWith<$Res> {
  __$$TodoFreezedImplCopyWithImpl(
      _$TodoFreezedImpl _value, $Res Function(_$TodoFreezedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isCompleted = null,
  }) {
    return _then(_$TodoFreezedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoFreezedImpl implements _TodoFreezed {
  const _$TodoFreezedImpl(
      {required this.id, required this.title, this.isCompleted = false});

  factory _$TodoFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoFreezedImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'TodoFreezed(id: $id, title: $title, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoFreezedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, isCompleted);

  /// Create a copy of TodoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoFreezedImplCopyWith<_$TodoFreezedImpl> get copyWith =>
      __$$TodoFreezedImplCopyWithImpl<_$TodoFreezedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoFreezedImplToJson(
      this,
    );
  }
}

abstract class _TodoFreezed implements TodoFreezed {
  const factory _TodoFreezed(
      {required final String id,
      required final String title,
      final bool isCompleted}) = _$TodoFreezedImpl;

  factory _TodoFreezed.fromJson(Map<String, dynamic> json) =
      _$TodoFreezedImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get isCompleted;

  /// Create a copy of TodoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoFreezedImplCopyWith<_$TodoFreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
