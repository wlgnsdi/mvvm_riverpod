import 'package:flutter/widgets.dart';
import 'package:mvvm_riverpod/model/todo.dart';
import 'package:mvvm_riverpod/riverpod_repository/repository/repository.dart';
import 'package:mvvm_riverpod/riverpod_repository/repository/repositoryImpl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_viewmodel.g.dart';

@riverpod
class TodoViewModel extends _$TodoViewModel {
  late final TodoRepository _repository;

  @override
  List<Todo> build() {
    _repository = ref.read(todoRepositoryImplProvider.notifier);
    return [];
  }

  Future<void> refreshInit() async {
    var data = await _repository.refreshInit();
    state = [...data];
  }

  Future<void> loadTodos() async {
    var data = await _repository.fetchTodos();
    state = [...data];
  }

  Future<void> addTodo(String title) async {
    final newTodo = Todo(
      id: DateTime.now().toIso8601String(),
      title: title,
    );
    
    await _repository.addTodo(newTodo);
    await loadTodos();
  }

  Future<void> deleteTodo(String id) async {
    debugPrint(">> deleteTodo >>11  ${state.length}");
    await _repository.deleteTodo(id);
    
    await _repository.fetchTodos();
    await loadTodos();
  }

  Future<void> toggleTodo(String id) async {
    await _repository.toggleTodo(id);
    
    await _repository.fetchTodos();
    await loadTodos();
  }
}
