import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/flashcard_provider.dart';
import '../models/flashcard.dart';
import 'flashcard_detail_page.dart';

class FlashcardCardsPage extends StatefulWidget {
  final String setId;

  const FlashcardCardsPage({super.key, required this.setId});

  @override
  State<FlashcardCardsPage> createState() => _FlashcardCardsPageState();
}

class _FlashcardCardsPageState extends State<FlashcardCardsPage> {
  @override
  void initState() {
    super.initState();
    // Load flashcards khi trang được khởi tạo
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<FlashcardProvider>(context, listen: false)
          .loadFlashcardsBySet(widget.setId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashcards'),
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
              child: Text('No flashcards found in this set'),
            );
          }

          return ListView.builder(
            itemCount: flashcards.length,
            itemBuilder: (context, index) {
              final card = flashcards[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  title: Text(card.question),
                  subtitle: Text('Type: ${card.type.toString().split('.').last}'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlashcardDetailPage(flashcard: card),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
} 