import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_calculator/calculator.dart';

void main() {
  final calculator = StringCalculator();

  test("returns 0 when empty string argument", () {
    expect(calculator.add(""), 0);
  });

  test("returns same number when only one argument is passed", () {
    expect(calculator.add("5"), 5);
  });

  test('returns sum of two comma-separated numbers', () {
    expect(calculator.add("1,2"), 3);
  });
}
