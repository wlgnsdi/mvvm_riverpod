import 'package:mvvm_riverpod/model/todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> refreshInit();
  Future<List<Todo>> fetchTodos();
  Future<void> addTodo(Todo todo);
  Future<void> deleteTodo(String id);
  Future<void> toggleTodo(String id);
}