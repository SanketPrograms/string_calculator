import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/utils/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('supports custom delimiter', () {
      final calculator = StringCalculator();

      expect(calculator.add('//;\n1;2'), 3);
    });
  });
}
