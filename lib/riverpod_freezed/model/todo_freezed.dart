import 'package:freezed_annotation/freezed_annotation.dart';
// 자동 생성 코드를 위해서 -> flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
// https://pub.dev/packages/freezed

part 'todo_freezed.freezed.dart';
part 'todo_freezed.g.dart';

@freezed
class TodoFreezed with _$TodoFreezed {
  const factory TodoFreezed({
    required String id,
    required String title,
    @Default(false) bool isCompleted,
  }) = _TodoFreezed;

  factory TodoFreezed.fromJson(Map<String, Object?> json)
      => _$TodoFreezedFromJson(json);
}