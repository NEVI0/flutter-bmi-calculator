import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/utils/constants.dart';

class Gender extends StatelessWidget {
	final String text;
	final IconData icon;
	final Color iconColor;

  const Gender({
    super.key,
		required this.text,
		required this.icon,
		required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    	mainAxisAlignment: MainAxisAlignment.center,
    	crossAxisAlignment: CrossAxisAlignment.center,
    	children: [
    		Icon(icon, size: 50, color: iconColor),
    		const SizedBox(height: 12),
    		Text(text, style: kTextStyle)
    	],
    );
  }
}
