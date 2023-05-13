import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
	final IconData icon;
	final Function onPressed;	

  const RoundedIconButton({
		super.key,
		required this.icon,
		required this.onPressed
	});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
			onPressed: () {
				onPressed();
			},
			shape: const CircleBorder(),
			fillColor: const Color(0xFF4C4F5E),
			constraints: const BoxConstraints.tightFor(
				width: 40,
				height: 40
			),
			child: Icon(icon, size: 16,),
		);
  }
}
