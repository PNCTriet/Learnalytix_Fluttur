import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/flashcard_provider.dart';
import '../providers/auth_provider.dart';
import '../models/flashcard_set.dart';
import 'flashcard_cards_page.dart';

class FlashcardSetsPage extends StatefulWidget {
  const FlashcardSetsPage({super.key});

  @override
  State<FlashcardSetsPage> createState() => _FlashcardSetsPageState();
}

class _FlashcardSetsPageState extends State<FlashcardSetsPage> {
  @override
  void initState() {
    super.initState();
    // Load flashcard sets khi trang được khởi tạo
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<FlashcardProvider>(context, listen: false).loadFlashcardSets();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashcard Sets'),
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

          final sets = provider.sets;
          if (sets.isEmpty) {
            return const Center(
              child: Text('No flashcard sets found'),
            );
          }

          return ListView.builder(
            itemCount: sets.length,
            itemBuilder: (context, index) {
              final set = sets[index];
              return Card(
                margin: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(set.name),
                  subtitle: Text(set.description ?? ''),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlashcardCardsPage(set: set),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement create new flashcard set
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Create new flashcard set feature coming soon!'),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 