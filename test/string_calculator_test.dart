import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/utils/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('returns number for single value', () {
      final calculator = StringCalculator();

      expect(calculator.add('1'), 1);
    });
  });
}
