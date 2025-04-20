import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/flashcard.dart';
import '../providers/flashcard_provider.dart';
import '../pages/flashcard_form_page.dart';

class FlashcardList extends StatelessWidget {
  const FlashcardList({super.key});

  @override
  Widget build(BuildContext context) {
    final flashcardProvider = Provider.of<FlashcardProvider>(context);
    final categories = flashcardProvider.categories;

    if (categories.isEmpty) {
      return const Center(
        child: Text('No flashcards found. Create your first flashcard!'),
      );
    }

    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        final flashcards = flashcardProvider.getFlashcardsByCategory(category);

        return ExpansionTile(
          title: Text(
            category,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          children: flashcards.map((flashcard) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: ListTile(
                title: Text(flashcard.question),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Type: ${flashcard.type.toString().split('.').last}'),
                    Text('Difficulty: ${flashcard.difficulty.toString().split('.').last}'),
                    if (flashcard.tags != null && flashcard.tags!.isNotEmpty)
                      Wrap(
                        spacing: 4,
                        children: flashcard.tags!.map((tag) {
                          return Chip(
                            label: Text(tag),
                            labelStyle: const TextStyle(fontSize: 12),
                          );
                        }).toList(),
                      ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FlashcardFormPage(flashcard: flashcard),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () async {
                        final confirmed = await showDialog<bool>(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Delete Flashcard'),
                            content: const Text('Are you sure you want to delete this flashcard?'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text('Delete'),
                              ),
                            ],
                          ),
                        );

                        if (confirmed == true) {
                          await flashcardProvider.deleteFlashcard(flashcard.id);
                        }
                      },
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
} 