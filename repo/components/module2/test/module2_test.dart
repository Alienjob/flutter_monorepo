import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:module2/module2.dart';

void main() {
  testWidgets('Module2Widget shows version', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Module2Widget(),
        ),
      ),
    );

    expect(find.text('Module 2'), findsOneWidget);
    expect(find.text('Version: ${Module2Widget.version}'), findsOneWidget);
  });
}
