class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String delimiter = ',';
    String numbersPart = numbers;

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts.first.substring(2);
      numbersPart = parts.last;
    }

    final values = numbersPart
        .replaceAll('\n', delimiter)
        .split(delimiter);

    final parsedNumbers = values.map(int.parse).toList();

    final negativeNumbers =
    parsedNumbers.where((number) => number < 0).toList();

    if (negativeNumbers.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed ${negativeNumbers.join(',')}',
      );
    }

    return parsedNumbers.fold(0, (sum, number) => sum + number);
  }
}
