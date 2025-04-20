import 'package:freezed_annotation/freezed_annotation.dart';
import 'multiple_choice_option.dart';

part 'flashcard.freezed.dart';
part 'flashcard.g.dart';

enum QuestionType {
  @JsonValue('multiple_choice')
  multipleChoice,
  @JsonValue('open_ended')
  openEnded,
  @JsonValue('fill_in_blank')
  fillInBlank,
}

enum DifficultyLevel {
  @JsonValue('easy')
  easy,
  @JsonValue('medium')
  medium,
  @JsonValue('hard')
  hard,
}

enum StudyMode {
  @JsonValue('learn')
  learn,
  @JsonValue('review')
  review,
  @JsonValue('practice')
  practice,
}

@freezed
class Flashcard with _$Flashcard {
  const factory Flashcard({
    required String id,
    required String question,
    required QuestionType type,
    required DifficultyLevel difficulty,
    String? category,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String userId,
    DateTime? lastReviewed,
    DateTime? nextReview,
    int? timeLimit,
    required StudyMode studyMode,
    String? correctAnswer,
    String? explanation,
    List<String>? tags,
    List<MultipleChoiceOption>? options,
  }) = _Flashcard;

  factory Flashcard.fromJson(Map<String, dynamic> json) =>
      _$FlashcardFromJson(json);
} 