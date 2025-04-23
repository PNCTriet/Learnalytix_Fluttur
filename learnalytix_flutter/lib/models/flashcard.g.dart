// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardImpl _$$FlashcardImplFromJson(Map<String, dynamic> json) =>
    _$FlashcardImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      type: $enumDecode(_$QuestionTypeEnumMap, json['type'],
          unknownValue: QuestionType.multipleChoice),
      difficulty: $enumDecode(_$DifficultyLevelEnumMap, json['difficulty'],
          unknownValue: DifficultyLevel.easy),
      studyMode: $enumDecode(_$StudyModeEnumMap, json['study_mode'],
          unknownValue: StudyMode.learn),
      category: json['category'] as String?,
      correctAnswer: json['correct_answer'] as String?,
      explanation: json['explanation'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => MultipleChoiceOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      timeLimit: (json['time_limit'] as num?)?.toInt(),
      lastReviewed: json['last_reviewed'] == null
          ? null
          : DateTime.parse(json['last_reviewed'] as String),
      nextReview: json['next_review'] == null
          ? null
          : DateTime.parse(json['next_review'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$$FlashcardImplToJson(_$FlashcardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'difficulty': _$DifficultyLevelEnumMap[instance.difficulty]!,
      'study_mode': _$StudyModeEnumMap[instance.studyMode]!,
      'category': instance.category,
      'correct_answer': instance.correctAnswer,
      'explanation': instance.explanation,
      'options': instance.options,
      'tags': instance.tags,
      'time_limit': instance.timeLimit,
      'last_reviewed': instance.lastReviewed?.toIso8601String(),
      'next_review': instance.nextReview?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user_id': instance.userId,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.multipleChoice: 'multiple_choice',
  QuestionType.openEnded: 'open_ended',
  QuestionType.trueFalse: 'true_false',
};

const _$DifficultyLevelEnumMap = {
  DifficultyLevel.easy: 'easy',
  DifficultyLevel.medium: 'medium',
  DifficultyLevel.hard: 'hard',
};

const _$StudyModeEnumMap = {
  StudyMode.learn: 'learn',
  StudyMode.review: 'review',
  StudyMode.test: 'test',
};
