import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:desing_paterns/home.dart';

void main() {
  group('MyHomePage Widget Tests', () {
    testWidgets('MyHomePage should display Singleton info', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyHomePage(title: 'Test'),
      ));

      expect(find.text('Información del Singleton:'), findsOneWidget);
      expect(find.text('Este es un ejemplo de Singleton en Flutter'), findsOneWidget);
    });

    testWidgets('MyHomePage should have correct AppBar title', (WidgetTester tester) async {
      const testTitle = 'Test Title';
      await tester.pumpWidget(const MaterialApp(
        home: MyHomePage(title: testTitle),
      ));

      expect(find.text(testTitle), findsOneWidget);
    });
  });
}
