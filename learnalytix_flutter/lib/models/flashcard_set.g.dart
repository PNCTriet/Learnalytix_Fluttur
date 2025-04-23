// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardSetImpl _$$FlashcardSetImplFromJson(Map<String, dynamic> json) =>
    _$FlashcardSetImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$$FlashcardSetImplToJson(_$FlashcardSetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user_id': instance.userId,
    };
