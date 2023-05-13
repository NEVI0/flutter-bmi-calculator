import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_bmi_calculator/widgets/rounded_icon_button.dart';
import 'package:flutter_bmi_calculator/utils/constants.dart';

class SelectNumber extends StatelessWidget {
	final String text;
	final int number;

	final Function onPressedMinus;
	final Function onPressedPlus;

  const SelectNumber({
		super.key,
		required this.text,
		required this.number,
		required this.onPressedMinus,
		required this.onPressedPlus,
	});

  @override
  Widget build(BuildContext context) {
    return Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				Text(text, style: kTextStyle,),
				Text(number.toString(), style: kBoldTextStyle,),
				Row(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						RoundedIconButton(
							onPressed: onPressedMinus,
							icon: FontAwesomeIcons.minus
						),
						const SizedBox(width: 12,),
						RoundedIconButton(
							onPressed: onPressedPlus,
							icon: FontAwesomeIcons.plus
						),
					],
				)
			],
		);
  }
}
