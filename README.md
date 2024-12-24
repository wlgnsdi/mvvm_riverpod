# MVVM Riverpod 학습

### 1. 기본적인 Riverpod 사용
riverpod 폴더 참고
```dart
class TodoViewModel extends Notifier<List<Todo>> {
    ...
}

final todoViewModelOriginProvider = NotifierProvider<TodoViewModel, List<Todo>>(() => TodoViewModel());
```

### 2. @riverpod 활용
riverpod_default 폴더 참고
```dart
part 'viewmodel.g.dart';

@riverpod
class TodoViewModel extends _$TodoViewModel  {
    ...
}
```

### 3. @riverpod + @freezed 활용
riverpod_freezed 폴더 참고
```dart
part 'viewmodel.g.dart';

@riverpod
class TodoViewModel extends _$TodoViewModel  {
    ...
}
```
```dart
part 'todo_freezed.freezed.dart';

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
```

### 4. @riverpod + repository 구조 활용
riverpod_repository 폴더 참고
```dart
part 'viewmodel.g.dart';

@riverpod
class TodoViewModel extends _$TodoViewModel  {
    ...
}
```
```dart
abstract class TodoRepository {
    ...
}
```
```dart
@riverpod
class TodoRepositoryImpl extends _$TodoRepositoryImpl
    implements TodoRepository {
        ...
    }
```
  
### 코드 자동 생성 방법
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```
