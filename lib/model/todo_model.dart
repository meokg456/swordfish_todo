import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/riverpod/form/todo_form.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

bool _completedFromJson(int completed) => completed == 1 ? true : false;

@freezed
class TodoModel with _$TodoModel {
  const TodoModel._();

  factory TodoModel({
    required int id,
    @Default("") String title,
    @Default("") String content,
    @JsonKey(fromJson: _completedFromJson) @Default(false) bool completed,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, Object?> json) =>
      _$TodoModelFromJson(json);

  TodoForm toEditForm() {
    return TodoForm(
      id: id,
      title: title,
      content: content,
      completed: completed,
    );
  }
}
