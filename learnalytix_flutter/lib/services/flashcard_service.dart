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
    print('Starting to fetch flashcards from Supabase...');
    try {
      final response = await _supabase
          .from('flashcards')
          .select()
          .order('created_at', ascending: false);

      print('Supabase response: $response');
      
      if (response == null) {
        print('No data returned from Supabase');
        return [];
      }

      print('Processing ${response.length} flashcards...');
      
      return response.map<Flashcard>((json) {
        try {
          print('Processing flashcard with data: $json');
          
          // Tạo một map mới với các trường đã được xử lý và giá trị mặc định
          final processedJson = {
            'id': json['id'] ?? '',
            'question': json['question_text'] ?? '',
            'correct_answer': json['answer_text'] ?? '',
            'type': _parseQuestionType(json['question_type']),
            'difficulty': _parseDifficultyLevel(json['difficulty']),
            'study_mode': _parseStudyMode(json['study_mode']),
            'category': json['category'] ?? '',
            'explanation': json['explanation'] ?? '',
            'tags': json['tags'] ?? [],
            'time_limit': json['time_limit'] ?? 0,
            'created_at': json['created_at'] ?? DateTime.now(),
            'updated_at': json['updated_at'] ?? DateTime.now(),
            'last_reviewed': json['last_reviewed'],
            'next_review': json['next_review'],
            'user_id': json['user_id'] ?? '',
            'image_url': json['image_url'],
            'options': json['options'] != null ? (json['options'] as List)
                .map((option) => MultipleChoiceOption.fromJson(option))
                .toList() : [],
          };

          final flashcard = Flashcard.fromJson(processedJson);
          print('Successfully created flashcard: ${flashcard.id}');
          return flashcard;
        } catch (e) {
          print('Error parsing flashcard: $e');
          print('JSON data that caused error: $json');
          rethrow;
        }
      }).toList();
    } catch (e) {
      print('Error in getFlashcards: $e');
      rethrow;
    }
  }

  QuestionType _parseQuestionType(String? value) {
    if (value == null) return QuestionType.multipleChoice;
    switch (value.toLowerCase()) {
      case 'multiple_choice':
        return QuestionType.multipleChoice;
      case 'true_false':
        return QuestionType.trueFalse;
      case 'open_ended':
        return QuestionType.openEnded;
      default:
        return QuestionType.multipleChoice;
    }
  }

  DifficultyLevel _parseDifficultyLevel(String? value) {
    if (value == null) return DifficultyLevel.easy;
    switch (value.toLowerCase()) {
      case 'easy':
        return DifficultyLevel.easy;
      case 'medium':
        return DifficultyLevel.medium;
      case 'hard':
        return DifficultyLevel.hard;
      default:
        return DifficultyLevel.easy;
    }
  }

  StudyMode _parseStudyMode(String? value) {
    if (value == null) return StudyMode.learn;
    switch (value.toLowerCase()) {
      case 'learn':
        return StudyMode.learn;
      case 'review':
        return StudyMode.review;
      case 'test':
        return StudyMode.test;
      default:
        return StudyMode.learn;
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
          processedJson['type'] = _parseQuestionType(flashcardJson['type']);
          processedJson['difficulty'] = _parseDifficultyLevel(flashcardJson['difficulty']);
          processedJson['study_mode'] = _parseStudyMode(flashcardJson['study_mode']);
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