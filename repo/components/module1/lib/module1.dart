library module1;

import 'package:flutter/material.dart';

/// A widget that displays the module name and version
class Module1Widget extends StatelessWidget {
  /// Creates a Module1Widget
  const Module1Widget({super.key});

  /// The current version of Module1
  static const String version = '0.0.2';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Module 1',
              style: TextStyle(
                fontSize: 16,
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
          ],
        ),
      ),
    );
  }
}
