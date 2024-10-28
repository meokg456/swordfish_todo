import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/l10n/generated/app_localizations.dart';
import 'package:todo/riverpod/todo_detail.dart';

class SaveTodoButton extends ConsumerWidget {
  const SaveTodoButton(this.id, this.formKey, {super.key});

  final int? id;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = AppLocalizations.of(context);
    return TextButton(
      onPressed: ref.read(todoDetailProvider(id).notifier).validate()
          ? () {
              ref.read(todoDetailProvider(id).notifier).save();
              context.pop();
            }
          : null,
      child: Text(localization.save),
    );
  }
}
