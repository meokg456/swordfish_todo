// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoFormImpl _$$TodoFormImplFromJson(Map<String, dynamic> json) =>
    _$TodoFormImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String? ?? "",
      content: json['content'] as String? ?? "",
      completed: json['completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$TodoFormImplToJson(_$TodoFormImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'completed': _completedToJson(instance.completed),
    };
