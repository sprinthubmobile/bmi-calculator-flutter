import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required weight, @required height}) {
    this._weight = weight;
    this._height = height;
  }
  int _weight;
  int _height;
  double _bmi;

  String calculateBMI() {
    _bmi = _weight / pow(_height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercie more";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Good job!!";
    } else {
      return "You have a lower than normal body weight. You should eat more.";
    }
  }
}
