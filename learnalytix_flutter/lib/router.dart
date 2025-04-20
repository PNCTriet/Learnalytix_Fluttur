import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'pages/flashcard_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const HomePage());
    case '/home':
      return MaterialPageRoute(builder: (_) => const HomePage());
    case '/profile':
      return MaterialPageRoute(builder: (_) => const ProfilePage());
    case '/sign-in':
      return MaterialPageRoute(builder: (_) => const SignInPage());
    case '/sign-up':
      return MaterialPageRoute(builder: (_) => const SignUpPage());
    case '/flashcards':
      return MaterialPageRoute(builder: (_) => const FlashcardPage());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
} 