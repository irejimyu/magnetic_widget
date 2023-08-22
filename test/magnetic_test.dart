import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:magnetic/magnetic.dart';

void main() {
  testWidgets('Check MagneticWidget exists', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: MagneticWidget(
              duration: Duration(seconds: 1),
              child: Icon(Icons.abc),
            ),
          ),
        ),
      ),
    );

    final magneticFinder = find.byType(MagneticWidget);
    expect(magneticFinder, findsOneWidget);
  });
}
