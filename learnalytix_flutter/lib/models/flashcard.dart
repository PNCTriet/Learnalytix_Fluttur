import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums.dart';
import 'multiple_choice_option.dart';
import 'package:learnalytix_flutter/utils/enum_utils.dart';

part 'flashcard.freezed.dart';
part 'flashcard.g.dart';

@freezed
class Flashcard with _$Flashcard {
  const factory Flashcard({
    required String id,
    required String question,
    @JsonKey(name: 'type', unknownEnumValue: QuestionType.multipleChoice)
    required QuestionType type,
    @JsonKey(name: 'difficulty', unknownEnumValue: DifficultyLevel.easy)
    required DifficultyLevel difficulty,
    @JsonKey(name: 'study_mode', unknownEnumValue: StudyMode.learn)
    required StudyMode studyMode,
    String? category,
    @JsonKey(name: 'correct_answer') String? correctAnswer,
    String? explanation,
    List<MultipleChoiceOption>? options,
    List<String>? tags,
    @JsonKey(name: 'time_limit') int? timeLimit,
    @JsonKey(name: 'last_reviewed') DateTime? lastReviewed,
    @JsonKey(name: 'next_review') DateTime? nextReview,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _Flashcard;

  factory Flashcard.fromJson(Map<String, dynamic> json) => _$FlashcardFromJson(json);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'question': question,
      'type': type.toString().split('.').last,
      'difficulty': difficulty.toString().split('.').last,
      'study_mode': studyMode.toString().split('.').last,
      'category': category,
      'correct_answer': correctAnswer,
      'explanation': explanation,
      'options': options?.map((option) => option.toJson()).toList(),
      'tags': tags,
      'time_limit': timeLimit,
      'last_reviewed': lastReviewed?.toIso8601String(),
      'next_review': nextReview?.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'user_id': userId,
      'image_url': imageUrl,
    };
  }
} 