import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app2_module/app2_module.dart';
import 'package:component1/component1.dart';
import 'package:component2/component2.dart';

void main() {
  testWidgets('App2ModuleWidget shows version and components', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: App2ModuleWidget(),
        ),
      ),
    );

    // Test app module version
    expect(find.text('App 2 Module'), findsOneWidget);
    expect(find.text('Version: ${App2ModuleWidget.version}'), findsOneWidget);
    expect(find.text('Components:'), findsOneWidget);

    // Test component dependencies are present
    expect(find.byType(Component1Widget), findsOneWidget);
    expect(find.byType(Component2Widget), findsOneWidget);
  });
}
