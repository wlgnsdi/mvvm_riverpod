import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_riverpod/riverpod_default/viewmodel.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  group('TodoViewModel Tests', () {
    // Riverpod 상태를 테스트하기 위해 사용
    late ProviderContainer container;
    late TodoViewModel viewModel;

    setUp(() {
      container = ProviderContainer();
      viewModel = container.read(todoViewModelProvider.notifier);
    });

    tearDown(() {
      container.dispose();
    });

    test('Initial state should be an empty list', () {
      final todos = container.read(todoViewModelProvider);
      expect(todos, []);
    });

    test('addTodo should add a new todo to the state', () {
      const title = 'Test Todo';
      viewModel.addTodo(title);

      final todos = container.read(todoViewModelProvider);
      expect(todos.length, 1);
      expect(todos.first.title, title);
      expect(todos.first.isCompleted, false);
    });

    test('toggleTodo should toggle isCompleted state of a todo', () {
      const title = 'Test Todo';
      viewModel.addTodo(title);

      final todos = container.read(todoViewModelProvider);
      final todoId = todos.first.id;

      viewModel.toggleTodo(todoId);

      final updatedTodos = container.read(todoViewModelProvider);
      expect(updatedTodos.first.isCompleted, true);

      viewModel.toggleTodo(todoId);

      final toggledBackTodos = container.read(todoViewModelProvider);
      expect(toggledBackTodos.first.isCompleted, false);
    });

    test('deleteTodo should remove a todo from the state', () {
      const title = 'Test Todo';
      viewModel.addTodo(title);

      final todos = container.read(todoViewModelProvider);
      final todoId = todos.first.id;

      viewModel.deleteTodo(todoId);

      final updatedTodos = container.read(todoViewModelProvider);
      expect(updatedTodos.length, 0);
    });

    test('addTodo should not add an empty title todo', () {
      viewModel.addTodo('');

      final todos = container.read(todoViewModelProvider);
      expect(todos.length, 1);
    });
  });
}