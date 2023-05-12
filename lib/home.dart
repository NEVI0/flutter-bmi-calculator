import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_bmi_calculator/widgets/card_wrapper.dart';
import 'package:flutter_bmi_calculator/widgets/gender.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color mainColor = Color(0xFFEB1555);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
											colour: isMaleSelected ? activeCardColor : inactiveCardColor,
											space: const EdgeInsets.fromLTRB(24, 24, 12, 12),
											child: Gender(
												text: 'MALE',
												icon: FontAwesomeIcons.mars,
												iconColor: isMaleSelected ? mainColor : Colors.white54,
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
											colour: isFemaleSelected ? activeCardColor : inactiveCardColor,
											space: const EdgeInsets.fromLTRB(12, 24, 24, 12),
											child: Gender(
												text: 'FEMALE',
												icon: FontAwesomeIcons.venus,
												iconColor: isFemaleSelected ? mainColor : Colors.white54,
											),
										),
									),
								),
							],
						),
					),
					const Expanded(
						child: CardWrapper(
							colour: activeCardColor,
							space: EdgeInsets.fromLTRB(24, 12, 24, 12),
						)
					),
					const Expanded(
						child: Row(
							children: [
								Expanded(child: CardWrapper(
									colour: activeCardColor,
									space: EdgeInsets.fromLTRB(24, 12, 12, 24),
								)),
								Expanded(child: CardWrapper(
									colour: activeCardColor,
									space: EdgeInsets.fromLTRB(12, 12, 24, 24),
								)),
							],
						),
					),
					Container(
						color: mainColor,
						width: double.infinity,
						height: 80,
					),
				],
			),
		);
  }
}
