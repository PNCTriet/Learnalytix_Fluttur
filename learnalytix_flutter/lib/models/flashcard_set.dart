import 'package:freezed_annotation/freezed_annotation.dart';
import 'flashcard.dart';

part 'flashcard_set.freezed.dart';
part 'flashcard_set.g.dart';

@freezed
class FlashcardSet with _$FlashcardSet {
  const factory FlashcardSet({
    required String id,
    required String name,
    String? description,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(ignore: true) List<Flashcard>? flashcards,
  }) = _FlashcardSet;

  factory FlashcardSet.fromJson(Map<String, dynamic> json) => _$FlashcardSetFromJson(json);
} 