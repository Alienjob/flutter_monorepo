import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:component2/component2.dart';
import 'package:module1/module1.dart';
import 'package:module2/module2.dart';

void main() {
  testWidgets('Component2Widget shows version and dependencies', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Component2Widget(),
        ),
      ),
    );

    // Test component version
    expect(find.text('Component 2'), findsOneWidget);
    expect(find.text('Version: ${Component2Widget.version}'), findsOneWidget);
    expect(find.text('Dependencies:'), findsOneWidget);

    // Test module dependencies are present
    expect(find.byType(Module1Widget), findsOneWidget);
    expect(find.byType(Module2Widget), findsOneWidget);
  });
}