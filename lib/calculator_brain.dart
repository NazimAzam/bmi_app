import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  int? height;
  int? weight;
  double? _bmi;

  String calculateBMI() {
    if (weight != null && height != null) {
      _bmi = weight! / pow(height! / 100, 2);
      return _bmi!.toStringAsFixed(1);
    }
    return '';
  }

  String getResults() {
    if (_bmi != null) {
      if (_bmi! >= 25) {
        return 'OVERWEIGHT';
      } else if (_bmi! > 18.5) {
        return 'NORMAL';
      } else {
        return 'UNDERWEIGHT';
      }
    }
    return '';
  }

  String getInterpretation() {
    if (_bmi != null) {
      if (_bmi! >= 25) {
        return 'Your BMI is high. Try to exercise more!';
      } else if (_bmi! > 18.5) {
        return 'Your BMI is normal. Nice job!';
      } else {
        return 'Your BMI is low. Eat more!';
      }
    }
    return '';
  }
}
