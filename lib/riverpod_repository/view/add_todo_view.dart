import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_riverpod/riverpod_repository/viewmodel_repo.dart';

class AddTodoView extends ConsumerWidget {
  final TextEditingController _controller = TextEditingController();

  AddTodoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(todoViewModelRepoProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Add Todo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Todo 입력'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final title = _controller.text.trim();
                if (title.isNotEmpty) {
                  await viewModel.addTodo(title);
                  Navigator.pop(context);
                }
              },
              child: Text('Todo 추가하기'),
            ),
          ],
        ),
      ),
    );
  }
}
