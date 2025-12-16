import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/utils/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('returns sum of multiple comma separated numbers', () {
      final calculator = StringCalculator();

      expect(calculator.add('1,2,3,4'), 10);
    });
  });
}
