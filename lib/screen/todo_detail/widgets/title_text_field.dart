import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/l10n/generated/app_localizations.dart';
import 'package:todo/riverpod/error_code/error_code.dart';
import 'package:todo/riverpod/todo_detail.dart';

class TitleTextField extends ConsumerWidget {
  const TitleTextField(this.id, {super.key});

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title =
        ref.watch(todoDetailProvider(id).select((form) => form.title));
    final localizations = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return TextFormField(
      initialValue: title,
      style: theme.textTheme.titleLarge,
      decoration: InputDecoration(
        hintText: localizations.titleHint,
        hintStyle: TextStyle(color: theme.colorScheme.outline),
        border: InputBorder.none,
      ),
      onChanged: ref.read(todoDetailProvider(id).notifier).updateTitle,
    );
  }
}
