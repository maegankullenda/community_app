import 'package:flutter/material.dart';

void main() {
  runApp(const CommunityApp());
}

/// Root shell; feature flows (car wash, foodie, beauty) land in later phases.
class CommunityApp extends StatelessWidget {
  const CommunityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Community App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const _HomePlaceholder(),
    );
  }
}

class _HomePlaceholder extends StatelessWidget {
  const _HomePlaceholder();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Community App')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Browse community services from providers — car wash, foodie, and beauty coming in Phase 1.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
