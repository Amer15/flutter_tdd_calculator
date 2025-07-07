class StringCalculator {
  int add(String number) {
    if (number.isEmpty) return 0;

    final parts = number
        .split(RegExp(r'[,\n]'))
        .where((e) => e.isNotEmpty)
        .map(int.parse);

    return parts.reduce((a, b) => a + b);
  }
}
