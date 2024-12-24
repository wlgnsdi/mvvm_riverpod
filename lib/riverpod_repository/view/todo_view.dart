import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_riverpod/riverpod_repository/view/add_todo_view.dart';
import 'package:mvvm_riverpod/riverpod_repository/viewmodel_repo.dart';

class TodoViewRepo extends ConsumerWidget {
  const TodoViewRepo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoViewModelRepoProvider);
    final viewModel = ref.read(todoViewModelRepoProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Todo 앱')),
      body: RefreshIndicator(
        onRefresh: () async {
          await viewModel.refreshInit();
        },
        child: todoList.isEmpty
            ? ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [Center(child: Text('할 일을 추가하세요.'))],
              )
            : ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  final todo = todoList[index];
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
                        viewModel.deleteTodo(todo.id);
                      },
                    ),
                    onTap: () {
                      viewModel.toggleTodo(todo.id);
                    },
                  );
                },
              ),
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
