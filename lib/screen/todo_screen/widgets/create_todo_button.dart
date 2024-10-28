import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/app/router.dart';

class CreateTodoButton extends ConsumerWidget {
  const CreateTodoButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        context.push(Routes.createTodo);
      },
      child: const Icon(Icons.add),
    );
  }
}
