import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/l10n/generated/app_localizations.dart';
import 'package:todo/riverpod/todo.dart';
import 'package:todo/screen/todo_screen/widgets/todo_widget.dart';

class CompletedTab extends ConsumerWidget {
  const CompletedTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = AppLocalizations.of(context);
    final todoList = ref.watch(todoProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.completed),
      ),
      body: switch (todoList) {
        AsyncData(:final value) => ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              final todo = value[index];

              if (!todo.completed) {
                return const SizedBox();
              }

              return TodoWidget(todo: todo);
            },
          ),
        _ => Container()
      },
    );
  }
}
