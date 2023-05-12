import 'package:flutter/material.dart';

class CardWrapper extends StatelessWidget {
	final Color colour;
	final EdgeInsetsGeometry space;
	final Widget? child;

  const CardWrapper({
		super.key,
		required this.colour,
		required this.space,
		this.child
	});

  @override
  Widget build(BuildContext context) {
    return Container(
    	margin: space,
    	decoration: BoxDecoration(
    		color: colour,
    		borderRadius: BorderRadius.circular(16),
    	),
			child: child,
    );
  }
}
