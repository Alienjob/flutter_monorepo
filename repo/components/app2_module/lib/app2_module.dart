library app2_module;

import 'package:flutter/material.dart';
import 'package:component1/component1.dart';
import 'package:component2/component2.dart';

/// A widget that displays the app module name, version, and its component dependencies
class App2ModuleWidget extends StatelessWidget {
  /// Creates an App2ModuleWidget
  const App2ModuleWidget({super.key});

  /// The current version of App2Module
  static const String version = '0.0.2';

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'App 2 Module',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Version: $version',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Components:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Component1Widget(),
            const SizedBox(height: 16),
            const Component2Widget(),
          ],
        ),
      ),
    );
  }
}
