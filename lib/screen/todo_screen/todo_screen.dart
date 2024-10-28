import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/l10n/generated/app_localizations.dart';
import 'package:todo/riverpod/navigation_index.dart';
import 'package:todo/screen/todo_screen/tab/completed_tab.dart';
import 'package:todo/screen/todo_screen/tab/todo_tab.dart';
import 'package:todo/screen/todo_screen/tab/uncompleted_tab.dart';
import 'package:todo/screen/todo_screen/widgets/create_todo_button.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen(this.initialIndex, {super.key});

  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = AppLocalizations.of(context);
    final selectedIndex = ref.watch(navigationIndexProvider(initialIndex));
    return Scaffold(
      body: SafeArea(
        child: [
          const TodoTab(),
          const UncompletedTab(),
          const CompletedTab(),
        ][selectedIndex],
      ),
      floatingActionButton: const CreateTodoButton(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: ref
            .read(navigationIndexProvider(initialIndex).notifier)
            .updateIndex,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.checklist),
            label: localizations.todo,
          ),
          NavigationDestination(
            icon: const Icon(Icons.list),
            label: localizations.uncompleted,
          ),
          NavigationDestination(
            icon: const Icon(Icons.check),
            label: localizations.completed,
          ),
        ],
      ),
    );
  }
}
