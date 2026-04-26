import 'package:flutter/material.dart';
import '../widgets/quote_card.dart';
import '../widgets/refresh_button.dart';
import 'dart:math';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  final List<String> _quotes = [
    "The best way to get started is to quit talking and begin doing.",
    "Don't let yesterday take up too much of today.",
    "It's not whether you get knocked down, it's whether you get up.",
    "You miss 100% of the shots you don't take.",
    "The harder the battle, the sweeter the victory.",
  ];

  int _currentIndex = 0;

  void _getRandomQuote() {
    setState(() {
      _currentIndex = Random().nextInt(_quotes.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mindful Respite')),
      body: Center(
        child: Column(
          mainAxisSize: .min,
          children: [
            QuoteCard(quote: _quotes[_currentIndex]),
            const SizedBox(height: 24),
            RefreshButton(onPressed: _getRandomQuote),
          ],
        ),
      ),
    );
  }
}
