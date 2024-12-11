import 'package:todo/model/todo_model.dart';

List<TodoModel> generateTodos(int total) {
  return List.generate(
    total,
    (index) =>
        TodoModel(id: index, title: 'Title $index', content: 'Content $index'),
  );
}
