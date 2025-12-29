import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:reorderables/reorderables.dart';

void main() {
  test('adds one to input values', () {
//    final calculator = Calculator();
//    expect(calculator.addOne(2), 3);
//    expect(calculator.addOne(-7), -6);
//    expect(calculator.addOne(0), 1);
//    expect(() => calculator.addOne(null), throwsNoSuchMethodError);
  });

  testWidgets('ReorderableWrap exposes cross-run animation flag',
      (WidgetTester tester) async {
    // This is a lightweight API test to ensure the new knob remains available.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ReorderableWrap(
            animateCrossAxisOnCrossRunReorder: true,
            onReorder: (int oldIndex, int newIndex) {},
            children: List<Widget>.generate(
              6,
              (int i) => Container(
                key: ValueKey<int>(i),
                width: 50,
                height: 50,
              ),
            ),
          ),
        ),
      ),
    );

    expect(find.byType(ReorderableWrap), findsOneWidget);
  });
}
