library module2;

import 'package:flutter/material.dart';

/// A widget that displays the module name and version
class Module2Widget extends StatelessWidget {
  /// Creates a Module2Widget
  const Module2Widget({super.key});

  /// The current version of Module2
  static const String version = '0.0.1';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Module 2',
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
