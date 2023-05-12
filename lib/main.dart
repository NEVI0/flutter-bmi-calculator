import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/home.dart';

void main() {
  runApp(const BMICalculatorApp());
}

const Color defaultAppColor = Color(0xFF0A0E21);

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
				primaryColor: defaultAppColor,
				scaffoldBackgroundColor: defaultAppColor,
				appBarTheme: const AppBarTheme(
					backgroundColor: defaultAppColor
				)
			),
      home: const Home()
    );
  }
}
