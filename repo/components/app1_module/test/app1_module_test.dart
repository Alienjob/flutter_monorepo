import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app1_module/app1_module.dart';
import 'package:component1/component1.dart';
import 'package:component2/component2.dart';

void main() {
  testWidgets('App1ModuleWidget shows version and components', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: App1ModuleWidget(),
        ),
      ),
    );

    // Test app module version
    expect(find.text('App 1 Module'), findsOneWidget);
    expect(find.text('Version: ${App1ModuleWidget.version}'), findsOneWidget);
    expect(find.text('Components:'), findsOneWidget);

    // Test component dependencies are present
    expect(find.byType(Component1Widget), findsOneWidget);
    expect(find.byType(Component2Widget), findsOneWidget);
  });
}
