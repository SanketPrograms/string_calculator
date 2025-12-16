import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/utils/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('returns 0 for empty string', () {
      final calculator = StringCalculator();

      final result = calculator.add('');

      expect(result, 0);
    });
  });
}
