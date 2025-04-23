import 'package:flutter/material.dart';
import '../models/flashcard.dart';

class FlashcardDetailPage extends StatelessWidget {
  final Flashcard flashcard;

  const FlashcardDetailPage({super.key, required this.flashcard});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashcard Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              flashcard.question,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Type',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              flashcard.type.toString().split('.').last,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Difficulty',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              flashcard.difficulty.toString().split('.').last,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Study Mode',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              flashcard.studyMode.toString().split('.').last,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (flashcard.category != null) ...[
              const SizedBox(height: 16),
              Text(
                'Category',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                flashcard.category!,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
            if (flashcard.correctAnswer != null) ...[
              const SizedBox(height: 16),
              Text(
                'Correct Answer',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                flashcard.correctAnswer!,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
            if (flashcard.explanation != null) ...[
              const SizedBox(height: 16),
              Text(
                'Explanation',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                flashcard.explanation!,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
            if (flashcard.options != null && flashcard.options!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(
                'Options',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              ...flashcard.options!.asMap().entries.map((entry) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Text(
                          '${String.fromCharCode(65 + entry.key)}. ',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Expanded(
                          child: Text(
                            entry.value.text,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        if (entry.value.isCorrect)
                          const Icon(Icons.check_circle, color: Colors.green),
                      ],
                    ),
                  )),
            ],
            if (flashcard.tags != null && flashcard.tags!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(
                'Tags',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: flashcard.tags!
                    .map((tag) => Chip(label: Text(tag)))
                    .toList(),
              ),
            ],
            if (flashcard.timeLimit != null) ...[
              const SizedBox(height: 16),
              Text(
                'Time Limit',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                '${flashcard.timeLimit} seconds',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
            const SizedBox(height: 16),
            Text(
              'Created At',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              flashcard.createdAt.toString(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Updated At',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              flashcard.updatedAt.toString(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
} 