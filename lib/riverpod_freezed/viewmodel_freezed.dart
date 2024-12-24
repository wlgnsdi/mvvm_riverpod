import 'package:mvvm_riverpod/riverpod_freezed/model/todo_freezed.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'viewmodel_freezed.g.dart';

@riverpod
class TodoViewModelFreezed extends _$TodoViewModelFreezed  {
  final _uuid = Uuid();

  List<TodoFreezed> list = [];

  @override
  List<TodoFreezed> build() {
    return [];
  }

  void addTodo(String title) {
    state = [
      ...state,
      TodoFreezed(
        id: _uuid.v4(),
        title: title,
        isCompleted: false,
      ),
    ];
  }

  void toggleTodo(String id) {
    state = [...state.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(isCompleted: !todo.isCompleted);
      }
      return todo;
    })];
  }

  void deleteTodo(String id) {
    state = [...state.where((todo) => todo.id != id)];
  }
}