import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    // Calculate BMI
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBMIResult() {
    if (_bmi < 18.5) {
      return "Underweight";
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      return "Normal";
    } else if (_bmi >= 25 && _bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return "You are under the ideal weight. Consider consulting a healthcare provider.";
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      return "You have a normal body weight. Good job!";
    } else if (_bmi >= 25 && _bmi < 29.9) {
      return "You are overweight. It might be helpful to assess your lifestyle.";
    } else {
      return "You are classified as obese. It's advisable to seek medical advice.";
    }
  }
}
