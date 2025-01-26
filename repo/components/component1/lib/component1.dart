library component1;

import 'package:flutter/material.dart';
import 'package:module1/module1.dart';
import 'package:module2/module2.dart';

/// A widget that displays the component name, version, and its module dependencies
class Component1Widget extends StatelessWidget {
  /// Creates a Component1Widget
  const Component1Widget({super.key});

  /// The current version of Component1
  static const String version = '0.1.0';

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
              'Component 1',
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
