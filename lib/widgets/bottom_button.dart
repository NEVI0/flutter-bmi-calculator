import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/utils/constants.dart';

class BottomButton extends StatelessWidget {
	final String text;
	final Function onPressed;

  const BottomButton({
		super.key,
		required this.text,
		required this.onPressed
	});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
			onTap: () {
				onPressed();
			},
			child: Container(
				color: kMainColor,
				width: double.infinity,
				height: 58,
				child: Center(
					child: Text(text, style: const TextStyle(
						fontSize: 16,
						fontWeight: FontWeight.w500
					),),
				),
			),
		);
  }
}
