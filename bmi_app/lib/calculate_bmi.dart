import 'package:flutter/material.dart';

class BmiCalculator {
  static double calculateBmi(double weight, double heightInCm) {
    double heightInMeters = heightInCm / 100.0;
    double bmiResult = weight / (heightInMeters * heightInMeters);
    return bmiResult;
  }

  static String getResult(double bmi) {
    if (bmi >= 30) {
      return 'Obese';
    } else if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  static String getInterpretation(double bmi) {
    if (bmi >= 30) {
      return 'You have a very high body weight. You need to see a doctor.';
    } else if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  static Color getColor(double bmi) {
    if (bmi >= 30) {
      return Colors.red;
    } else if (bmi >= 25) {
      return Colors.yellow;
    } else if (bmi > 18.5) {
      return Colors.green;
    } else {
      return Colors.redAccent;
    }
  }

  static Color getTextColor(double bmi) {
    if (bmi >= 25 && bmi < 30) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }
}
