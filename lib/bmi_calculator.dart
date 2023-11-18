import 'dart:math';

import 'package:imc_exercise/person.dart';

class BMICalculator {
  Person _person;

  BMICalculator(this._person);

  double calcBmi() {
    double bmi;
    bmi = _person.weight / pow(_person.height, 2);
    return bmi;
  }

  String classifiesBMI(double bmi) {
    String result;

    if (bmi < 16) {
      result = "magreza grave";
    } else if (bmi >= 16 && bmi < 17) {
      result = "magreza moderada";
    } else if (bmi >= 17 && bmi < 18.5) {
      result = "magreza leve";
    } else if (bmi >= 18.5 && bmi < 25) {
      result = "saudável";
    } else if (bmi >= 25 && bmi < 30) {
      result = "sobrepeso";
    } else if (bmi >= 30 && bmi < 35) {
      result = "obesidade grau I";
    } else if (bmi >= 35 && bmi < 40) {
      result = "obesidade grau II (severa)";
    } else {
      result = "obesidade grau III (mórbida)";
    }

    return result.toUpperCase();
  }
}