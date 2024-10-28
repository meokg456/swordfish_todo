import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/riverpod/todo_detail.dart';
import 'package:todo/screen/todo_detail/widgets/content_text_field.dart';
import 'package:todo/screen/todo_detail/widgets/save_todo_button.dart';
import 'package:todo/screen/todo_detail/widgets/title_text_field.dart';

class TodoDetailScreen extends ConsumerStatefulWidget {
  const TodoDetailScreen(this.id, {super.key});

  final int? id;

  @override
  ConsumerState<TodoDetailScreen> createState() => _TodoDetailScreenState();
}

class _TodoDetailScreenState extends ConsumerState<TodoDetailScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final form = ref.watch(todoDetailProvider(widget.id));
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBar(
          title: TitleTextField(widget.id),
          actions: [SaveTodoButton(widget.id, formKey)],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ContentTextField(widget.id),
        ),
      ),
    );
  }
}
