import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/utils/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('supports new lines between numbers', () {
      final calculator = StringCalculator();

      expect(calculator.add('1\n2,3'), 6);
    });
  });
}
