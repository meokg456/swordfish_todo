import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_form.freezed.dart';
part 'todo_form.g.dart';

int _completedToJson(bool completed) => completed ? 1 : 0;

@freezed
class TodoForm with _$TodoForm {
  factory TodoForm({
    int? id,
    @Default("") String title,
    @Default("") String content,
    @JsonKey(toJson: _completedToJson) @Default(false) bool completed,
  }) = _TodoForm;

  factory TodoForm.fromJson(Map<String, Object?> json) =>
      _$TodoFormFromJson(json);
}
