import 'dart:io';

import 'package:imc_exercise/bmi_calculator.dart';
import 'package:imc_exercise/person.dart';

void main(List<String> arguments) {
  print("######## Calculadora de IMC ########");
  
  stdout.write("Digite seu nome....: ");
  String name = stdin.readLineSync()!;
  
  stdout.write("Digite sua altura..: ");
  double height = double.parse(stdin.readLineSync()!);
  
  stdout.write("Digite seu peso....: ");
  double weight = double.parse(stdin.readLineSync()!);


  Person person = Person(name, height, weight);
  BMICalculator bmiCalculator = BMICalculator(person);
  double bmi = bmiCalculator.calcBmi();

  print("Seu IMC...................: $bmi");
  print("Sua classificação.........: ${bmiCalculator.classifiesBMI(bmi)}");

}
