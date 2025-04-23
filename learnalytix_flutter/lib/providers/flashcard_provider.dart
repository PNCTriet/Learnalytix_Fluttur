import 'package:flutter/foundation.dart';
import '../models/flashcard.dart';
import '../models/flashcard_set.dart';
import '../models/multiple_choice_option.dart';
import '../services/flashcard_service.dart';

class FlashcardProvider with ChangeNotifier {
  final FlashcardService _service;
  List<Flashcard> _flashcards = [];
  List<FlashcardSet> _sets = [];
  List<MultipleChoiceOption> _currentOptions = [];
  bool _isLoading = false;
  String? _error;
  List<Flashcard> _cards = [];

  FlashcardProvider(this._service);

  List<Flashcard> get flashcards => _flashcards;
  List<FlashcardSet> get sets => _sets;
  List<MultipleChoiceOption> get currentOptions => _currentOptions;
  bool get isLoading => _isLoading;
  String? get error => _error;
  List<Flashcard> get cards => _cards;

  Future<void> loadFlashcards() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final flashcards = await _service.getFlashcards();
      _flashcards = flashcards;
      _error = null;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadFlashcardSets() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _sets = await _service.getFlashcardSets();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadFlashcardsBySet(String setId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _cards = await _service.getFlashcardsBySet(setId);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadMultipleChoiceOptions(String flashcardId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _currentOptions = await _service.getMultipleChoiceOptions(flashcardId);
      _error = null;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addFlashcard(Flashcard flashcard) async {
    try {
      await _service.addFlashcard(flashcard);
      await loadFlashcards();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> updateFlashcard(Flashcard flashcard) async {
    try {
      await _service.updateFlashcard(flashcard);
      await loadFlashcards();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> deleteFlashcard(String id) async {
    try {
      await _service.deleteFlashcard(id);
      await loadFlashcards();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> addFlashcardSet(FlashcardSet set) async {
    try {
      await _service.addFlashcardSet(set);
      await loadFlashcardSets();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> updateFlashcardSet(FlashcardSet set) async {
    try {
      await _service.updateFlashcardSet(set);
      await loadFlashcardSets();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> deleteFlashcardSet(String id) async {
    try {
      await _service.deleteFlashcardSet(id);
      await loadFlashcardSets();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }
} 