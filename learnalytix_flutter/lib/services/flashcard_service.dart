import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/flashcard.dart';
import '../models/flashcard_set.dart';
import '../models/multiple_choice_option.dart';
import '../models/enums.dart';
import '../utils/enum_utils.dart';

class FlashcardService {
  final SupabaseClient _supabase;

  FlashcardService(this._supabase);

  Future<List<Flashcard>> getFlashcards() async {
    try {
      final response = await _supabase
          .from('flashcards')
          .select()
          .order('created_at', ascending: false);

      if (response == null) return [];

      return response.map<Flashcard>((json) {
        try {
          // Xử lý các trường có thể null
          final processedJson = Map<String, dynamic>.from(json);
          processedJson['question'] = json['question'] ?? '';
          processedJson['type'] = json['type'] ?? 'multiple_choice';
          processedJson['difficulty'] = json['difficulty'] ?? 'easy';
          processedJson['study_mode'] = json['study_mode'] ?? 'learn';
          processedJson['category'] = json['category'] ?? '';
          processedJson['correct_answer'] = json['correct_answer'] ?? '';
          processedJson['explanation'] = json['explanation'] ?? '';
          processedJson['tags'] = json['tags'] ?? [];
          processedJson['time_limit'] = json['time_limit'] ?? 0;
          processedJson['user_id'] = json['user_id'] ?? '';

          return Flashcard.fromJson(processedJson);
        } catch (e) {
          print('Error parsing flashcard: $e');
          return Flashcard(
            id: json['id'] ?? '',
            question: json['question'] ?? '',
            type: QuestionType.multipleChoice,
            difficulty: DifficultyLevel.easy,
            studyMode: StudyMode.learn,
            category: json['category'],
            correctAnswer: json['correct_answer'],
            explanation: json['explanation'],
            options: [],
            tags: [],
            timeLimit: json['time_limit'],
            lastReviewed: json['last_reviewed'] != null
                ? DateTime.parse(json['last_reviewed'])
                : null,
            nextReview: json['next_review'] != null
                ? DateTime.parse(json['next_review'])
                : null,
            createdAt: DateTime.parse(json['created_at']),
            updatedAt: DateTime.parse(json['updated_at']),
            userId: json['user_id'] ?? '',
          );
        }
      }).toList();
    } catch (e) {
      print('Error in getFlashcards: $e');
      rethrow;
    }
  }

  Future<List<Flashcard>> getFlashcardsBySet(String setId) async {
    try {
      final response = await _supabase
          .from('flashcard_set_cards')
          .select('flashcard:flashcards(*)')
          .eq('set_id', setId)
          .order('created_at', ascending: false);

      if (response == null) return [];

      return response.map<Flashcard>((json) {
        try {
          final flashcardJson = json['flashcard'];
          if (flashcardJson == null) {
            return Flashcard(
              id: '',
              question: '',
              type: QuestionType.multipleChoice,
              difficulty: DifficultyLevel.easy,
              studyMode: StudyMode.learn,
              category: '',
              correctAnswer: '',
              explanation: '',
              options: [],
              tags: [],
              timeLimit: 0,
              lastReviewed: null,
              nextReview: null,
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
              userId: '',
            );
          }

          // Xử lý các trường có thể null
          final processedJson = Map<String, dynamic>.from(flashcardJson);
          processedJson['question'] = flashcardJson['question'] ?? '';
          processedJson['type'] = flashcardJson['type'] ?? 'multiple_choice';
          processedJson['difficulty'] = flashcardJson['difficulty'] ?? 'easy';
          processedJson['study_mode'] = flashcardJson['study_mode'] ?? 'learn';
          processedJson['category'] = flashcardJson['category'] ?? '';
          processedJson['correct_answer'] = flashcardJson['correct_answer'] ?? '';
          processedJson['explanation'] = flashcardJson['explanation'] ?? '';
          processedJson['tags'] = flashcardJson['tags'] ?? [];
          processedJson['time_limit'] = flashcardJson['time_limit'] ?? 0;
          processedJson['user_id'] = flashcardJson['user_id'] ?? '';

          return Flashcard.fromJson(processedJson);
        } catch (e) {
          print('Error parsing flashcard: $e');
          return Flashcard(
            id: '',
            question: '',
            type: QuestionType.multipleChoice,
            difficulty: DifficultyLevel.easy,
            studyMode: StudyMode.learn,
            category: '',
            correctAnswer: '',
            explanation: '',
            options: [],
            tags: [],
            timeLimit: 0,
            lastReviewed: null,
            nextReview: null,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            userId: '',
          );
        }
      }).toList();
    } catch (e) {
      print('Error in getFlashcardsBySet: $e');
      rethrow;
    }
  }

  Future<Flashcard> getFlashcard(String id) async {
    try {
      final response = await _supabase
          .from('flashcards')
          .select()
          .eq('id', id)
          .single();

      return Flashcard.fromJson(response);
    } catch (e) {
      print('Error in getFlashcard: $e');
      rethrow;
    }
  }

  Future<void> addFlashcard(Flashcard flashcard) async {
    try {
      await _supabase.from('flashcards').insert(flashcard.toJson());
    } catch (e) {
      print('Error in addFlashcard: $e');
      rethrow;
    }
  }

  Future<void> updateFlashcard(Flashcard flashcard) async {
    try {
      await _supabase
          .from('flashcards')
          .update(flashcard.toJson())
          .eq('id', flashcard.id);
    } catch (e) {
      print('Error in updateFlashcard: $e');
      rethrow;
    }
  }

  Future<void> deleteFlashcard(String id) async {
    try {
      await _supabase.from('flashcards').delete().eq('id', id);
    } catch (e) {
      print('Error in deleteFlashcard: $e');
      rethrow;
    }
  }

  Future<List<MultipleChoiceOption>> getMultipleChoiceOptions(String flashcardId) async {
    try {
      final response = await _supabase
          .from('multiple_choice_options')
          .select()
          .eq('flashcard_id', flashcardId)
          .order('created_at', ascending: true);

      if (response == null) return [];

      return (response as List)
          .map((json) => MultipleChoiceOption.fromJson(json))
          .toList();
    } catch (e) {
      print('Error in getMultipleChoiceOptions: $e');
      rethrow;
    }
  }

  Future<void> addMultipleChoiceOption(MultipleChoiceOption option) async {
    await _supabase.from('multiple_choice_options').insert(option.toJson());
  }

  Future<void> updateMultipleChoiceOption(MultipleChoiceOption option) async {
    await _supabase
        .from('multiple_choice_options')
        .update(option.toJson())
        .eq('id', option.id);
  }

  Future<void> deleteMultipleChoiceOption(String id) async {
    await _supabase.from('multiple_choice_options').delete().eq('id', id);
  }

  Future<List<FlashcardSet>> getFlashcardSets() async {
    try {
      final response = await _supabase
          .from('flashcard_sets')
          .select()
          .order('created_at', ascending: false);

      if (response == null) return [];

      return (response as List)
          .map((json) => FlashcardSet.fromJson(json))
          .toList();
    } catch (e) {
      print('Error in getFlashcardSets: $e');
      rethrow;
    }
  }

  Future<FlashcardSet> getFlashcardSet(String id) async {
    try {
      final response = await _supabase
          .from('flashcard_sets')
          .select()
          .eq('id', id)
          .single();

      return FlashcardSet.fromJson(response);
    } catch (e) {
      print('Error in getFlashcardSet: $e');
      rethrow;
    }
  }

  Future<void> addFlashcardSet(FlashcardSet set) async {
    try {
      await _supabase.from('flashcard_sets').insert(set.toJson());
    } catch (e) {
      print('Error in addFlashcardSet: $e');
      rethrow;
    }
  }

  Future<void> updateFlashcardSet(FlashcardSet set) async {
    try {
      await _supabase
          .from('flashcard_sets')
          .update(set.toJson())
          .eq('id', set.id);
    } catch (e) {
      print('Error in updateFlashcardSet: $e');
      rethrow;
    }
  }

  Future<void> deleteFlashcardSet(String id) async {
    try {
      await _supabase.from('flashcard_sets').delete().eq('id', id);
    } catch (e) {
      print('Error in deleteFlashcardSet: $e');
      rethrow;
    }
  }
} 