import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:focus_track_movil/main.dart';

void main() {
  // Verifica que el contador inicie en cero y suba al completar una meta
  testWidgets('Goal counter increments when tapping Completar Meta',
      (WidgetTester tester) async {
    await tester.pumpWidget(const FocusTrackApp());

    expect(find.text('0 / 5'), findsOneWidget);
    expect(find.text('Inicial'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.check));
    await tester.pump();

    expect(find.text('1 / 5'), findsOneWidget);
    expect(find.text('En Progreso'), findsOneWidget);
  });

  // Verifica que el contador no baje de cero
  testWidgets('Goal counter never goes below zero',
      (WidgetTester tester) async {
    await tester.pumpWidget(const FocusTrackApp());

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    expect(find.text('0 / 5'), findsOneWidget);
  });
}
