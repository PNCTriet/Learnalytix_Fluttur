import 'package:flutter/foundation.dart';
import '../models/flashcard.dart';
import '../services/flashcard_service.dart';

class FlashcardProvider with ChangeNotifier {
  final FlashcardService _flashcardService = FlashcardService();
  List<Flashcard> _flashcards = [];
  bool _isLoading = false;
  String? _error;

  List<Flashcard> get flashcards => _flashcards;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadFlashcards() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      _flashcards = await _flashcardService.getFlashcards();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }
} 