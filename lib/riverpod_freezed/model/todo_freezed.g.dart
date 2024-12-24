// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoFreezedImpl _$$TodoFreezedImplFromJson(Map<String, dynamic> json) =>
    _$TodoFreezedImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$TodoFreezedImplToJson(_$TodoFreezedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isCompleted': instance.isCompleted,
    };
