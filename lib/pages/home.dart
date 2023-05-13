import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/pages/results.dart';
import 'package:flutter_bmi_calculator/widgets/select_number.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_bmi_calculator/widgets/card_wrapper.dart';
import 'package:flutter_bmi_calculator/widgets/gender.dart';
import 'package:flutter_bmi_calculator/widgets/bottom_button.dart';

import 'package:flutter_bmi_calculator/utils/calculator.dart';
import 'package:flutter_bmi_calculator/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
	int height = 180;
	int weight = 50;
	int age = 18;

	bool isMaleSelected = false;
	bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				centerTitle: true,
				shadowColor: Colors.transparent,
				title: const Text('BMI Calculator'),
			),
			body: Column(
				crossAxisAlignment: CrossAxisAlignment.stretch,
				children: [
					Expanded(
						child: Row(
							children: [
								Expanded(
									child: GestureDetector(
										onTap: () {
											setState(() {
												isMaleSelected = !isMaleSelected;
												isFemaleSelected = isMaleSelected ? false : true;
											});
										},
										child: CardWrapper(
											colour: isMaleSelected ? kActiveCardColor : kInactiveCardColor,
											space: const EdgeInsets.fromLTRB(24, 24, 12, 12),
											child: Gender(
												text: 'MALE',
												icon: FontAwesomeIcons.mars,
												iconColor: isMaleSelected ? kMainColor : Colors.white54,
											),
										),
									)
								),
								Expanded(
									child: GestureDetector(
										onTap: () {
											setState(() {
												isFemaleSelected = !isFemaleSelected;
												isMaleSelected = isFemaleSelected ? false : true;
											});
										},
										child: CardWrapper(
											colour: isFemaleSelected ? kActiveCardColor : kInactiveCardColor,
											space: const EdgeInsets.fromLTRB(12, 24, 24, 12),
											child: Gender(
												text: 'FEMALE',
												icon: FontAwesomeIcons.venus,
												iconColor: isFemaleSelected ? kMainColor : Colors.white54,
											),
										),
									),
								),
							],
						),
					),
					Expanded(
						child: CardWrapper(
							colour: kActiveCardColor,
							space: const EdgeInsets.fromLTRB(24, 12, 24, 12),
							child: Column(
								mainAxisAlignment: MainAxisAlignment.center,
								children: [
									const Text('HEIGHT', style: kTextStyle,),
									Row(
										mainAxisAlignment: MainAxisAlignment.center,
										crossAxisAlignment: CrossAxisAlignment.baseline,
										textBaseline: TextBaseline.alphabetic,
										children: [
											Text(height.toString(), style: kBoldTextStyle),
											const Text('cm', style: kTextStyle),
										],
									),
									Slider(
										value: height.toDouble(),
										min: kMinHeightValue,
										max: kMaxHeightValue,
										activeColor: kMainColor,
										inactiveColor: const Color(0xFF8D8E98),
										onChanged: (double newHeight) {
											setState(() {
											  height = newHeight.round();
											});
										},
									),
								],
							),
						)
					),
					Expanded(
						child: Row(
							children: [
								Expanded(
									child: CardWrapper(
										colour: kActiveCardColor,
										space: const EdgeInsets.fromLTRB(24, 12, 12, 24),
										child: SelectNumber(
											text: 'WEIGHT',
											number: weight,
											onPressedMinus: () {
												setState(() { weight--; });
											},
											onPressedPlus: () {
												setState(() { weight++; });
											},
										),
									)
								),
								Expanded(
									child: CardWrapper(
										colour: kActiveCardColor,
										space: const EdgeInsets.fromLTRB(12, 12, 24, 24),
										child: SelectNumber(
											text: 'AGE',
											number: age,
											onPressedMinus: () {
												setState(() { age--; });
											},
											onPressedPlus: () {
												setState(() { age++; });
											},
										),
									)
								),
							],
						),
					),
					BottomButton(
						text: 'CALCULATE BMI',
						onPressed: () {
							Calculator calc = Calculator(height: height, weight: weight);
							Navigator.push(context, MaterialPageRoute(builder: (context) => Results(
								bmi: calc.bmi(),
								result: calc.result(),
								message: calc.interpretation(),
							)));
						},
					),
				],
			),
		);
  }
}
