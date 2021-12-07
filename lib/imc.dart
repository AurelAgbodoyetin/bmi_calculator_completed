import 'dart:math';
import 'package:flutter/material.dart';

double computeBMI(double weight, double height) {
  height = height / 100;
  return weight / pow(height, 2);
}

String getBMICategory(double bmi) {
  if (bmi < 18.5) {
    return "SOUS POIDS";
  } else {
    if ((18.5 <= bmi) && (bmi < 25)) {
      return "NORMAL";
    } else {
      return "SUR POIDS";
    }
  }
}

Color getBMIColor(double bmi) {
  if ((bmi < 18.5) || (25 <= bmi)) {
    return Colors.red;
  } else {
    return Colors.green;
  }
}

String getBMIInterpretation(double bmi) {
  if (bmi < 18.5) {
    return "Vous avez un imc sous la normale, vous pouvez manger plus.";
  } else {
    if ((18.5 <= bmi) && (bmi < 25)) {
      return "Vous avez un IMC normal, Félicitations!";
    } else {
      return "Vous avez un IMC au dessus de la normale. Faites des exercices sportifs!";
    }
  }
}
