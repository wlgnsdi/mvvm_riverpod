import 'package:mvvm_riverpod/model/todo.dart';
import 'package:mvvm_riverpod/riverpod_repository/repository/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repositoryImpl.g.dart'; // Generated file for Riverpod

@riverpod
class TodoRepositoryImpl extends _$TodoRepositoryImpl
    implements TodoRepository {
  final List<Todo> _todos = [];

  @override
  List<Todo> build() {
    return _todos;
  }

  @override
  Future<List<Todo>> refreshInit() async {
    _todos
      ..add(Todo(
        id: DateTime.now().toIso8601String(),
        title: 'Todo 1',
      ))
      ..add(Todo(
        id: DateTime.now().toIso8601String(),
        title: 'Todo 2',
      ))
      ..add(Todo(
        id: DateTime.now().toIso8601String(),
        title: 'Todo 3',
      ));
    return _todos;
  }
  
  @override
  Future<List<Todo>> fetchTodos() async {
    return _todos;
  }

  @override
  Future<void> addTodo(Todo todo) async {
    _todos.add(todo);
  }

  @override
  Future<void> deleteTodo(String id) async {
    _todos.removeWhere((todo) => todo.id == id);
  }

  @override
  Future<void> toggleTodo(String id) async {
    final index = _todos.indexWhere((todo) => todo.id == id);
    if (index != -1) {
      _todos[index] = _todos[index].copyWith(
        isCompleted: !_todos[index].isCompleted,
      );
    }
  }
}
