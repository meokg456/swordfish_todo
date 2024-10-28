import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/l10n/generated/app_localizations.dart';
import 'package:todo/riverpod/todo_detail.dart';

class ContentTextField extends ConsumerWidget {
  const ContentTextField(this.id, {super.key});

  final int? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final content =
        ref.watch(todoDetailProvider(id).select((form) => form.content));
    final localizations = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return TextFormField(
      initialValue: content,
      decoration: InputDecoration(
        hintText: localizations.contentHint,
        hintStyle: TextStyle(color: theme.colorScheme.outline),
        border: InputBorder.none,
      ),
      maxLines: null,
      expands: true,
      onChanged: ref.read(todoDetailProvider(id).notifier).updateContent,
    );
  }
}
