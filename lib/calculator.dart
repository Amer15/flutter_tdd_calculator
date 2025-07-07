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
        .where((e) => e.isNotEmpty);

    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
