import 'package:go_router/go_router.dart';
import 'package:todo/screen/todo_detail/todo_detail_screen.dart';
import 'package:todo/screen/todo_screen/todo_screen.dart';

class Routes {
  static String todo = '/';
  static String todoDetail(int id) => '/todos/$id';
  static String todoDetailPath = '/todos/:id';
  static String createTodo = '/todos/add';
}

final router = GoRouter(
  initialLocation: Routes.todo,
  routes: [
    GoRoute(
      path: Routes.todo,
      builder: (context, state) => const TodoScreen(0),
    ),
    GoRoute(
      path: Routes.createTodo,
      builder: (context, state) => const TodoDetailScreen(null),
    ),
    GoRoute(
      path: Routes.todoDetailPath,
      builder: (context, state) =>
          TodoDetailScreen(int.parse(state.pathParameters['id']!)),
    ),
  ],
);
