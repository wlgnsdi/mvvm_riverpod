import 'package:flutter/widgets.dart';
import 'package:mvvm_riverpod/model/todo.dart';
import 'package:mvvm_riverpod/riverpod_repository/repository/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'repository/repositoryImpl.dart';

part 'viewmodel_repo.g.dart';

@riverpod
class TodoViewModelRepo extends _$TodoViewModelRepo {
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
