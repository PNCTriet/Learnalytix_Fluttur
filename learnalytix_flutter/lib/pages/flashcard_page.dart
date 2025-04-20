import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/flashcard_provider.dart';
import '../providers/auth_provider.dart';
import '../models/flashcard.dart';
import '../widgets/bottom_nav_bar.dart';

class FlashcardPage extends StatefulWidget {
  const FlashcardPage({super.key});

  @override
  State<FlashcardPage> createState() => _FlashcardPageState();
}

class _FlashcardPageState extends State<FlashcardPage> {
  int _selectedIndex = 1; // Index của trang flashcards

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final isLoggedIn = authProvider.user != null;

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/flashcards');
        break;
      case 2:
        if (isLoggedIn) {
          Navigator.pushNamed(context, '/profile');
        } else {
          Navigator.pushReplacementNamed(context, '/sign-in');
        }
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    _loadFlashcards();
  }

  Future<void> _loadFlashcards() async {
    final provider = Provider.of<FlashcardProvider>(context, listen: false);
    await provider.loadFlashcards();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final isLoggedIn = authProvider.user != null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashcards'),
        actions: [
          if (isLoggedIn)
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                await authProvider.signOut();
                if (mounted) {
                  Navigator.pushReplacementNamed(context, '/sign-in');
                }
              },
            )
          else
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/sign-in');
              },
              child: const Text('Sign In'),
            ),
        ],
      ),
      body: Consumer<FlashcardProvider>(
        builder: (context, provider, child) {
          if (!isLoggedIn) {
            return const Center(
              child: Text('Please sign in to view your flashcards'),
            );
          }

          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.error != null) {
            return Center(
              child: Text('Error: ${provider.error}'),
            );
          }

          final flashcards = provider.flashcards;
          if (flashcards.isEmpty) {
            return const Center(
              child: Text('No flashcards found. Create your first one!'),
            );
          }

          return ListView.builder(
            itemCount: flashcards.length,
            itemBuilder: (context, index) {
              final flashcard = flashcards[index];
              return Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: ListTile(
                  title: Text(flashcard.question),
                  subtitle: Text(
                    'Type: ${flashcard.type.toString().split('.').last}\n'
                    'Difficulty: ${flashcard.difficulty.toString().split('.').last}',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (flashcard.options != null && flashcard.options!.isNotEmpty)
                        const Icon(Icons.list, color: Colors.blue),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(Icons.visibility),
                        onPressed: () {
                          // TODO: Navigate to detail page
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: isLoggedIn
          ? FloatingActionButton(
              onPressed: () {
                // TODO: Navigate to create flashcard page
              },
              child: const Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
} 