import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_riverpod/riverpod_default/add_todo_view.dart';
import 'package:mvvm_riverpod/riverpod_default/viewmodel.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoViewModelProvider);
    final viewmodel = ref.watch(todoViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Todo 앱')),
      body: todos.isEmpty
          ? Center(child: Text('할 일을 추가하세요.'))
          : ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ListTile(
                  title: Text(
                    todo.title,
                    style: TextStyle(
                      decoration: todo.isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      viewmodel.deleteTodo(todo.id);
                    },
                  ),
                  onTap: () {
                    viewmodel.toggleTodo(todo.id);
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTodoView()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}