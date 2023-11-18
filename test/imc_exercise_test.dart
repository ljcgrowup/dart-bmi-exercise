import 'dart:math';

import 'package:imc_exercise/bmi_calculator.dart';
import 'package:imc_exercise/person.dart';
import 'package:test/test.dart';

void main() {
  group("BMI Calculator Class: ", () {
    double height = 1.75;
    double weight = 81;

    double bmiExpected = weight / pow(height, 2);

    Person person = Person("Jhon Doe", height, weight);
    BMICalculator calculator = BMICalculator(person);
    double bmi = calculator.calcBmi();

    test('Calc BMI test', () {
      expect(bmi, bmiExpected);
    });

    test("Classifyer BMI test", () {
      expect(calculator.classifiesBMI(bmi), "SOBREPESO");
    });
  });
}
