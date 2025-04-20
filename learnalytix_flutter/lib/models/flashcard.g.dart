// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardImpl _$$FlashcardImplFromJson(Map<String, dynamic> json) =>
    _$FlashcardImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
      difficulty: $enumDecode(_$DifficultyLevelEnumMap, json['difficulty']),
      category: json['category'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as String,
      lastReviewed: json['lastReviewed'] == null
          ? null
          : DateTime.parse(json['lastReviewed'] as String),
      nextReview: json['nextReview'] == null
          ? null
          : DateTime.parse(json['nextReview'] as String),
      timeLimit: (json['timeLimit'] as num?)?.toInt(),
      studyMode: $enumDecode(_$StudyModeEnumMap, json['studyMode']),
      correctAnswer: json['correctAnswer'] as String?,
      explanation: json['explanation'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => MultipleChoiceOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FlashcardImplToJson(_$FlashcardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'difficulty': _$DifficultyLevelEnumMap[instance.difficulty]!,
      'category': instance.category,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'userId': instance.userId,
      'lastReviewed': instance.lastReviewed?.toIso8601String(),
      'nextReview': instance.nextReview?.toIso8601String(),
      'timeLimit': instance.timeLimit,
      'studyMode': _$StudyModeEnumMap[instance.studyMode]!,
      'correctAnswer': instance.correctAnswer,
      'explanation': instance.explanation,
      'tags': instance.tags,
      'options': instance.options,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.multipleChoice: 'multiple_choice',
  QuestionType.openEnded: 'open_ended',
  QuestionType.fillInBlank: 'fill_in_blank',
};

const _$DifficultyLevelEnumMap = {
  DifficultyLevel.easy: 'easy',
  DifficultyLevel.medium: 'medium',
  DifficultyLevel.hard: 'hard',
};

const _$StudyModeEnumMap = {
  StudyMode.learn: 'learn',
  StudyMode.review: 'review',
  StudyMode.practice: 'practice',
};
