import 'dart:math';

class CalculatorBrain {

  final int weight;
  final int height;

  double _bmi;

  CalculatorBrain({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Do some exercise.';
    } else if (_bmi > 18.5) {
      return 'Great! You have normal body weight.';
    } else {
      return 'You have a lower than normal body weight. Eat some healthy food.';
    }
  }

}