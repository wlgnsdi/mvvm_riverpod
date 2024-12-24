import 'package:mvvm_riverpod/model/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

class TodoViewModel extends Notifier<List<Todo>> {
  final _uuid = Uuid();

  @override
  List<Todo> build() {
    return [];
  }

  void addTodo(String title) {
    state = [
      ...state,
      Todo(
        id: _uuid.v4(),
        title: title
      ),
    ];
  }

  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(isCompleted: !todo.isCompleted);
      }
      return todo;
    }).toList();
  }

  void deleteTodo(String id) {
    state = state.where((todo) => todo.id != id).toList();
  }
}

final todoViewModelOriginProvider = NotifierProvider<TodoViewModel, List<Todo>>(() => TodoViewModel());