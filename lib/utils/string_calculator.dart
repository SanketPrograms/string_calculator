class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    String numbersPart = numbers;

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts.first.substring(2);
      numbersPart = parts.last;
    }

    final values = numbersPart.replaceAll('\n', delimiter).split(delimiter);
    return values.map(int.parse).reduce((a, b) => a + b);
  }
}
