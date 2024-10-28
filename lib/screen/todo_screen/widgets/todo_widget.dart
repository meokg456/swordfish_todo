import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/app/router.dart';
import 'package:todo/model/todo_model.dart';
import 'package:todo/riverpod/todo.dart';

class TodoWidget extends ConsumerWidget {
  const TodoWidget({super.key, required this.todo});

  final TodoModel todo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return ListTile(
      onTap: () {
        context.push(Routes.todoDetail(todo.id));
      },
      leading: Icon(
        Icons.circle,
        color: theme.primaryColor,
        size: 16,
      ),
      title: Text(todo.title),
      subtitle: todo.content.isNotEmpty
          ? Text(
              todo.content,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          : null,
      trailing: Checkbox(
        value: todo.completed,
        onChanged: (value) {
          if (value == null) {
            return;
          }
          ref.read(todoProvider.notifier).setTodoCompletion(todo.id, value);
        },
      ),
    );
  }
}
