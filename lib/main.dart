import 'package:flutter/material.dart';
import 'package:bmi_calculater/screens/Homepage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF45526c),
        scaffoldBackgroundColor: Color(0xFFf8ede3),
      ),
      home: Homepage(),
    );
  }
}
