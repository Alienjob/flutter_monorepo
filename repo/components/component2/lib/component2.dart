library component2;

import 'package:flutter/material.dart';
import 'package:module1/module1.dart';
import 'package:module2/module2.dart';

/// A widget that displays the component name, version, and its module dependencies
class Component2Widget extends StatelessWidget {
  /// Creates a Component2Widget
  const Component2Widget({super.key});

  /// The current version of Component2
  static const String version = '0.0.2';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Component 2',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Version: $version',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Dependencies:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Module1Widget(),
            const SizedBox(height: 8),
            const Module2Widget(),
          ],
        ),
      ),
    );
  }
}