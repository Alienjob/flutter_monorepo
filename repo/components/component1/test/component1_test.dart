import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:component1/component1.dart';
import 'package:module1/module1.dart';
import 'package:module2/module2.dart';

void main() {
  testWidgets('Component1Widget shows version and dependencies', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Component1Widget(),
        ),
      ),
    );

    // Test component version
    expect(find.text('Component 1'), findsOneWidget);
    expect(find.text('Version: ${Component1Widget.version}'), findsOneWidget);
    expect(find.text('Dependencies:'), findsOneWidget);

    // Test module dependencies are present
    expect(find.byType(Module1Widget), findsOneWidget);
    expect(find.byType(Module2Widget), findsOneWidget);
  });
}
