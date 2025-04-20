// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiple_choice_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultipleChoiceOptionImpl _$$MultipleChoiceOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$MultipleChoiceOptionImpl(
      id: json['id'] as String,
      flashcardId: json['flashcardId'] as String,
      text: json['text'] as String,
      isCorrect: json['isCorrect'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MultipleChoiceOptionImplToJson(
        _$MultipleChoiceOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'flashcardId': instance.flashcardId,
      'text': instance.text,
      'isCorrect': instance.isCorrect,
      'createdAt': instance.createdAt.toIso8601String(),
    };
