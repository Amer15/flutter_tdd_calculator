class StringCalculator {
  int add(String number) {
    if (number.isEmpty) return 0;

    if (number.contains(',')) {
      final parts = number.split(',');
      return parts.map(int.parse).reduce((a, b) => a + b);
    }
    
    return int.parse(number);
  }
}
