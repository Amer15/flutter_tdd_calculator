import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_calculator/calculator.dart';

void main() {
  final calculator = StringCalculator();
  
  test("returns 0 when empty string argument", () {
    expect(calculator.add(""), 0);
  });
}