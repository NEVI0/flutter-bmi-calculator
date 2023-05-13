import 'dart:math';

class Calculator {
	final int height;
	final int weight;

	double _bmi = 0;

	Calculator({required this.height, required this.weight});

	String bmi() {
		_bmi = weight / pow(height / 100, 2);
		return _bmi.toStringAsFixed(1);
	}

	String result() {
		String message = '';

		if (_bmi >= 25) {
			message = 'Overweight';
		} else if (_bmi > 18.5) {
			message = 'Normal';
		} else {
			message = 'Underweight';
		}

		return message;
	}

	String interpretation() {
		String message = '';

		if (_bmi >= 25) {
			message = 'You have a higher than normal body weight. Try to exercise more.';
		} else if (_bmi > 18.5) {
			message = 'You have a normal body weight. Good job!';
		} else {
			message = 'You have a lower than normal body weight. You can eat a bit more.';
		}

		return message;
	}
}
