import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthProvider with ChangeNotifier {
  final SupabaseClient _supabase = Supabase.instance.client;
  User? _user;
  bool _isLoading = false;
  String? _error;

  User? get user => _user;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isAuthenticated => _user != null;

  AuthProvider() {
    debugPrint('AuthProvider initialized');
    _init();
  }

  Future<void> _init() async {
    debugPrint('AuthProvider _init started');
    _isLoading = true;
    notifyListeners();

    try {
      _user = _supabase.auth.currentUser;
      debugPrint('Current user: ${_user?.email}');
      
      _supabase.auth.onAuthStateChange.listen((data) {
        debugPrint('Auth state changed: ${data.event}');
        final AuthChangeEvent event = data.event;
        if (event == AuthChangeEvent.signedIn) {
          _user = data.session?.user;
        } else if (event == AuthChangeEvent.signedOut) {
          _user = null;
        }
        notifyListeners();
      });
    } catch (e) {
      debugPrint('Error in _init: $e');
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
      debugPrint('AuthProvider _init completed');
    }
  }

  Future<void> signIn(String email, String password) async {
    debugPrint('Sign in started for: $email');
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      _user = response.user;
      debugPrint('Sign in successful for: ${_user?.email}');
    } catch (e) {
      debugPrint('Sign in error: $e');
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signUp(String email, String password) async {
    debugPrint('Sign up started for: $email');
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
      );
      _user = response.user;
      debugPrint('Sign up successful for: ${_user?.email}');
    } catch (e) {
      debugPrint('Sign up error: $e');
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signOut() async {
    debugPrint('Sign out started');
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _supabase.auth.signOut();
      _user = null;
      debugPrint('Sign out successful');
    } catch (e) {
      debugPrint('Sign out error: $e');
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> deleteAccount() async {
    debugPrint('Delete account started');
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _supabase.auth.admin.deleteUser(_user!.id);
      await signOut();
      debugPrint('Delete account successful');
    } catch (e) {
      debugPrint('Delete account error: $e');
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
} 