import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:module1/module1.dart';

void main() {
  testWidgets('Module1Widget shows version', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Module1Widget(),
        ),
      ),
    );

    expect(find.text('Module 1'), findsOneWidget);
    expect(find.text('Version: ${Module1Widget.version}'), findsOneWidget);
  });
}
