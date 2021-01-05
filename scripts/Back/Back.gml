back_ease_in = function( _x ) {
	static c1 = 1.70158;
	static c3 = c1 + 1;

	return c3 * _x * _x * _x - c1 * _x * _x;
}

back_ease_out = function( _x ) {
	static c1 = 1.70158;
	static c3 = c1 + 1;

	return 1 + c3 * power(_x - 1, 3) + c1 * power(_x - 1, 2);
}

back_ease_in_out = function( _x ) {
	static c1 = 1.70158;
	static c2 = c1 * 1.525;
	
	if (_x < 0.5) {
		return 	(power(2 * _x, 2) * ((c2 + 1) * 2 * _x - c2)) / 2;
	}
	return (power(2 * _x - 2, 2) * ((c2 + 1) * (_x * 2 - 2) + c2) + 2) / 2;
}