class StringCalculator {
  int add(String number) {
    if (number.isEmpty) return 0;

    String numbers = number;
    String pattern = r'[,\n]';

    if (number.startsWith('//')) {
      final delimiterEndIndex = number.indexOf('\n');
      final delimiter = number.substring(2, delimiterEndIndex);
      pattern = '[$delimiter\n]';
      numbers = number.substring(delimiterEndIndex + 1);
    }

    final parts = numbers
        .split(RegExp(pattern))
        .where((e) => e.isNotEmpty)
        .map(int.parse)
        .toList();

    final negatives = parts.where((n) => n < 0).toList();

    if (negatives.isNotEmpty) {
      throw Exception("negative numbers not allowed ${negatives.join(',')}");
    }

    return parts.reduce((a, b) => a + b);
  }
}
