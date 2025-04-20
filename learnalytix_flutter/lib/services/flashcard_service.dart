import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/flashcard.dart';
import '../models/multiple_choice_option.dart';

class FlashcardService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<List<Flashcard>> getFlashcards() async {
    try {
      final response = await _supabase
          .from('flashcards')
          .select('''
            id,
            question,
            type,
            difficulty,
            category,
            created_at,
            updated_at,
            user_id,
            last_reviewed,
            next_review,
            time_limit,
            study_mode,
            correct_answer,
            explanation,
            tags,
            options:multiple_choice_options(
              id,
              text,
              is_correct,
              created_at
            )
          ''')
          .eq('user_id', _supabase.auth.currentUser!.id)
          .order('created_at', ascending: false);

      if (response == null) return [];

      return (response as List).map((json) {
        final Map<String, dynamic> processedJson = Map<String, dynamic>.from(json);
        
        // Convert snake_case to camelCase
        processedJson['userId'] = processedJson.remove('user_id');
        processedJson['createdAt'] = processedJson.remove('created_at');
        processedJson['updatedAt'] = processedJson.remove('updated_at');
        processedJson['lastReviewed'] = processedJson.remove('last_reviewed');
        processedJson['nextReview'] = processedJson.remove('next_review');
        processedJson['timeLimit'] = processedJson.remove('time_limit');
        processedJson['studyMode'] = processedJson.remove('study_mode');
        processedJson['correctAnswer'] = processedJson.remove('correct_answer');

        // Process options if they exist
        if (processedJson['options'] != null) {
          final List<dynamic> optionsJson = processedJson['options'];
          processedJson['options'] = optionsJson.map((option) {
            final Map<String, dynamic> optionMap = Map<String, dynamic>.from(option);
            optionMap['flashcardId'] = json['id'];
            optionMap['createdAt'] = optionMap.remove('created_at');
            optionMap['isCorrect'] = optionMap.remove('is_correct');
            return optionMap;
          }).toList();
        }

        return Flashcard.fromJson(processedJson);
      }).toList();
    } catch (e) {
      print('Error in getFlashcards: $e');
      rethrow;
    }
  }
} 