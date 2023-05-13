import 'package:flutter/material.dart';

import 'package:flutter_bmi_calculator/widgets/bottom_button.dart';
import 'package:flutter_bmi_calculator/utils/constants.dart';

class Results extends StatelessWidget {
	final String bmi;
	final String result;
	final String message;

  const Results({
		super.key,
		required this.bmi,
		required this.result,
		required this.message,
	});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				centerTitle: true,
				shadowColor: Colors.transparent,				
				title: const Text('BMI Calculator'),
			),
			body: Column(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: [
					Expanded(
						child: Container(
							decoration: BoxDecoration(
								color: kActiveCardColor,
								borderRadius: BorderRadius.circular(16),
							),
							margin: const EdgeInsets.all(24),
							child: Center(
								child: Column(
									mainAxisAlignment: MainAxisAlignment.center,
									children: [
										const Text('Your results', style: TextStyle(fontSize: 16),),
										const SizedBox(height: 4,),

										Text(
											result.toUpperCase(),
											style: const TextStyle(
												color: Colors.greenAccent,
												fontWeight: FontWeight.w500,
												fontSize: 24
											),
										),
										const SizedBox(height: 32,),

										Text(bmi, style: kBoldTextStyle,),
										const SizedBox(height: 32,),

										Padding(
											padding: const EdgeInsets.only(left: 24, right: 24),
											child: Text(
												message,
												textAlign: TextAlign.center,
												style: const TextStyle(fontSize: 16,),
											),
										),
									],
								),
							),
						),
					),
					BottomButton(
						text: 'RE-CALCULATE BMI',
						onPressed: () {
							Navigator.pop(context);
						},
					),
				],
			),
		);
  }
}
