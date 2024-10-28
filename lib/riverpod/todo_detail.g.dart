// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoDetailHash() => r'9569d6a18818ba9742486ae588c8dd231767734b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TodoDetail extends BuildlessAutoDisposeNotifier<TodoForm> {
  late final int? id;

  TodoForm build(
    int? id,
  );
}

/// See also [TodoDetail].
@ProviderFor(TodoDetail)
const todoDetailProvider = TodoDetailFamily();

/// See also [TodoDetail].
class TodoDetailFamily extends Family<TodoForm> {
  /// See also [TodoDetail].
  const TodoDetailFamily();

  /// See also [TodoDetail].
  TodoDetailProvider call(
    int? id,
  ) {
    return TodoDetailProvider(
      id,
    );
  }

  @override
  TodoDetailProvider getProviderOverride(
    covariant TodoDetailProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'todoDetailProvider';
}

/// See also [TodoDetail].
class TodoDetailProvider
    extends AutoDisposeNotifierProviderImpl<TodoDetail, TodoForm> {
  /// See also [TodoDetail].
  TodoDetailProvider(
    int? id,
  ) : this._internal(
          () => TodoDetail()..id = id,
          from: todoDetailProvider,
          name: r'todoDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoDetailHash,
          dependencies: TodoDetailFamily._dependencies,
          allTransitiveDependencies:
              TodoDetailFamily._allTransitiveDependencies,
          id: id,
        );

  TodoDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int? id;

  @override
  TodoForm runNotifierBuild(
    covariant TodoDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(TodoDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoDetailProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<TodoDetail, TodoForm> createElement() {
    return _TodoDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TodoDetailRef on AutoDisposeNotifierProviderRef<TodoForm> {
  /// The parameter `id` of this provider.
  int? get id;
}

class _TodoDetailProviderElement
    extends AutoDisposeNotifierProviderElement<TodoDetail, TodoForm>
    with TodoDetailRef {
  _TodoDetailProviderElement(super.provider);

  @override
  int? get id => (origin as TodoDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
