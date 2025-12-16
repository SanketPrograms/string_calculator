import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/utils/string_calculator.dart';

void main() {
  group('StringCalculator', () {
    test('shows all negative numbers in exception message', () {
      final calculator = StringCalculator();

      expect(
        () => calculator.add('1,-2,-3'),
        throwsA(
          predicate(
            (e) => e.toString().contains('-2,-3'),
          ),
        ),
      );
    });
  });
}
