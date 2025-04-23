import 'package:json_annotation/json_annotation.dart';

part 'enums.g.dart';

@JsonEnum(alwaysCreate: true)
enum QuestionType {
  @JsonValue('multiple_choice')
  multipleChoice,
  @JsonValue('open_ended')
  openEnded,
  @JsonValue('true_false')
  trueFalse
}

@JsonEnum(alwaysCreate: true)
enum DifficultyLevel {
  @JsonValue('easy')
  easy,
  @JsonValue('medium')
  medium,
  @JsonValue('hard')
  hard
}

@JsonEnum(alwaysCreate: true)
enum StudyMode {
  @JsonValue('learn')
  learn,
  @JsonValue('review')
  review,
  @JsonValue('test')
  test
} 