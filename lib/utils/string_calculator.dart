class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final values = numbers.replaceAll('\n', ',').split(',');
    return values.map(int.parse).reduce((a, b) => a + b);
  }
}
