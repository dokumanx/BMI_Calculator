import 'dart:math';

class CalculatorBrain {
  double _resultBmi = 0.0;
  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight});

//  18.4 > -      => Underweight
//  18.5 - 24.9   => Healthful weight
//  29.9 - 25.0   => Overweight
//  30.0 - 39.9   => Obesity
//  - > 40.0      => Extreme Obesity
  String calculateBmi() {
    _resultBmi = weight / (pow(height / 100, 2));

    return _resultBmi.toStringAsFixed(1);
  }

  String printResult() {
    if (_resultBmi >= 0.0 && _resultBmi <= 18.4)
      return 'Underweight';
    else if (_resultBmi <= 24.9 && _resultBmi >= 18.5)
      return 'Healthful weight';
    else if (_resultBmi <= 29.9 && _resultBmi >= 25.0)
      return 'Overweight';
    else if (_resultBmi <= 39.9 && _resultBmi >= 30.0)
      return 'Obesity';
    else
      return 'Extreme Obesity';
  }

  String getInterpretation() {
    if (_resultBmi <= 18.4)
      return 'You have a lower than normal body weight. You can eat a bit more.';
    else if (_resultBmi <= 24.9 && _resultBmi >= 18.5)
      return 'You have a healthful body weight. Great job!';
    else if (_resultBmi <= 29.9 && _resultBmi >= 25.0)
      return 'You have a higher than normal body weight. Try to exercise more.';
    else if (_resultBmi <= 39.9 && _resultBmi >= 30.0)
      return 'Critical body mass. See a doctor immediately.';
    else
      return 'Critical body mass. Could be deadly results.';
  }
}
