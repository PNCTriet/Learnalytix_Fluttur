import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../providers/flashcard_provider.dart';
import '../widgets/bottom_nav_bar.dart';
import '../models/flashcard.dart';
import 'flashcard_detail_page.dart';

class FlashcardPage extends StatefulWidget {
  const FlashcardPage({super.key});

  @override
  State<FlashcardPage> createState() => _FlashcardPageState();
}

class _FlashcardPageState extends State<FlashcardPage> {
  int _selectedIndex = 1; // Index của trang flashcards

  @override
  void initState() {
    super.initState();
    // Load flashcards khi trang được khởi tạo
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<FlashcardProvider>(context, listen: false).loadFlashcards();
    });
  }

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
              child: Text('No flashcards found'),
            );
          }

          return ListView.builder(
            itemCount: flashcards.length,
            itemBuilder: (context, index) {
              final flashcard = flashcards[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  title: Text(flashcard.question),
                  subtitle: Text('Type: ${flashcard.type.toString().split('.').last}'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlashcardDetailPage(flashcard: flashcard),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: isLoggedIn
          ? FloatingActionButton(
              onPressed: () {
                // TODO: Implement create new flashcard
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Create new flashcard feature coming soon!'),
                  ),
                );
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