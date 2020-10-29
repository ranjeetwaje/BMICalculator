import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/screens/bmi_page.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'screens/bmi_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}

// way to achieve pagination
/*
1. home: InputPage()

2. initialRoute: '/',
      routes: {
        '/' : (context) => InputPage(),
        '/first' : (context) => BMIPage(resultText: calc.getResults(),
          bmiResult: calc.calculateBMI(), interpretation: calc.getInterpretation(),),
      }
*/