import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiple_choice_option.freezed.dart';
part 'multiple_choice_option.g.dart';

@freezed
class MultipleChoiceOption with _$MultipleChoiceOption {
  const factory MultipleChoiceOption({
    required String id,
    required String flashcardId,
    required String text,
    required bool isCorrect,
    required DateTime createdAt,
  }) = _MultipleChoiceOption;

  factory MultipleChoiceOption.fromJson(Map<String, dynamic> json) =>
      _$MultipleChoiceOptionFromJson(json);
} 