import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/l10n/generated/app_localizations.dart';
import 'package:todo/riverpod/todo.dart';
import 'package:todo/screen/todo_screen/widgets/todo_widget.dart';

class TodoTab extends ConsumerWidget {
  const TodoTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = AppLocalizations.of(context);
    final todoList = ref.watch(todoProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.todo),
      ),
      body: switch (todoList) {
        AsyncData(:final value) => ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              final todo = value[index];
              return TodoWidget(todo: todo);
            }),
        _ => Container()
      },
    );
  }
}
