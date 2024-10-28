// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoForm _$TodoFormFromJson(Map<String, dynamic> json) {
  return _TodoForm.fromJson(json);
}

/// @nodoc
mixin _$TodoForm {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(toJson: _completedToJson)
  bool get completed => throw _privateConstructorUsedError;

  /// Serializes this TodoForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoFormCopyWith<TodoForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoFormCopyWith<$Res> {
  factory $TodoFormCopyWith(TodoForm value, $Res Function(TodoForm) then) =
      _$TodoFormCopyWithImpl<$Res, TodoForm>;
  @useResult
  $Res call(
      {int? id,
      String title,
      String content,
      @JsonKey(toJson: _completedToJson) bool completed});
}

/// @nodoc
class _$TodoFormCopyWithImpl<$Res, $Val extends TodoForm>
    implements $TodoFormCopyWith<$Res> {
  _$TodoFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoFormImplCopyWith<$Res>
    implements $TodoFormCopyWith<$Res> {
  factory _$$TodoFormImplCopyWith(
          _$TodoFormImpl value, $Res Function(_$TodoFormImpl) then) =
      __$$TodoFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String title,
      String content,
      @JsonKey(toJson: _completedToJson) bool completed});
}

/// @nodoc
class __$$TodoFormImplCopyWithImpl<$Res>
    extends _$TodoFormCopyWithImpl<$Res, _$TodoFormImpl>
    implements _$$TodoFormImplCopyWith<$Res> {
  __$$TodoFormImplCopyWithImpl(
      _$TodoFormImpl _value, $Res Function(_$TodoFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
    Object? completed = null,
  }) {
    return _then(_$TodoFormImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoFormImpl implements _TodoForm {
  _$TodoFormImpl(
      {this.id,
      this.title = "",
      this.content = "",
      @JsonKey(toJson: _completedToJson) this.completed = false});

  factory _$TodoFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoFormImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey(toJson: _completedToJson)
  final bool completed;

  @override
  String toString() {
    return 'TodoForm(id: $id, title: $title, content: $content, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoFormImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, completed);

  /// Create a copy of TodoForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoFormImplCopyWith<_$TodoFormImpl> get copyWith =>
      __$$TodoFormImplCopyWithImpl<_$TodoFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoFormImplToJson(
      this,
    );
  }
}

abstract class _TodoForm implements TodoForm {
  factory _TodoForm(
          {final int? id,
          final String title,
          final String content,
          @JsonKey(toJson: _completedToJson) final bool completed}) =
      _$TodoFormImpl;

  factory _TodoForm.fromJson(Map<String, dynamic> json) =
      _$TodoFormImpl.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(toJson: _completedToJson)
  bool get completed;

  /// Create a copy of TodoForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoFormImplCopyWith<_$TodoFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
