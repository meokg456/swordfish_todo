import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:todo/model/todo_model.dart';
import 'package:todo/repository/sqlite_todo_repository.dart';
import 'package:todo/repository/todo_repository.dart';
import 'package:todo/riverpod/todo.dart';

import 'mock_data.dart';
import 'todo_tests.mocks.dart';

class TodoListener extends Mock {
  void call(
    AsyncValue<List<TodoModel>>? previous,
    AsyncValue<List<TodoModel>> value,
  );
}

@GenerateNiceMocks([MockSpec<TodoRepository>()])
void main() {
  late MockTodoRepository mockRepository;
  late ProviderContainer container;

  setUp(() {
    mockRepository = MockTodoRepository();
  });

  group('Test get todos', () {
    setUp(() {
      container = ProviderContainer(
        overrides: [
          todoRepositoryProvider.overrideWith((ref) => mockRepository),
        ],
      );
    });

    test('Test get todos success has data', () async {
      final response = generateTodos(5);

      when(mockRepository.getTodos()).thenAnswer((_) async => response);

      addTearDown(container.dispose);

      expect(
        container.read(todoProvider),
        const AsyncLoading<List<TodoModel>>(),
      );

      await container.read(todoProvider.future);

      expect(
        container.read(todoProvider),
        AsyncData(response),
      );
    });

    test('Test get todos success empty', () async {
      when(mockRepository.getTodos()).thenAnswer((_) async => []);

      addTearDown(container.dispose);

      expect(
        container.read(todoProvider),
        const AsyncLoading<List<TodoModel>>(),
      );

      await container.read(todoProvider.future);

      expect(
        listEquals(container.read(todoProvider).value, []),
        true,
      );
    });

    test('Test get todos have error', () async {
      const error = 'Error';
      when(mockRepository.getTodos()).thenThrow(error);

      addTearDown(container.dispose);
      expect(
        container.read(todoProvider),
        const AsyncLoading<List<TodoModel>>(),
      );

      try {
        await container.read(todoProvider.future);
      } catch (exception) {
        debugPrint(exception.toString());
      }

      expect(
        container.read(todoProvider).error,
        error,
      );
    });
  });

  group('Test add todo', () {});
}
