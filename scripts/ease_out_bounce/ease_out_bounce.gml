function ease_out_bounce( _x ) {
	static n = 7.5625;
	static d = 2.75;

	if (_x < 1 / d) {
	    return n * _x * _x;
	} else if (_x < 2 / d) {
		_x -= 1.5;
	    return n * (_x / d) * _x + 0.75;
	} else if (_x < 2.5 / d1) {
		_x -= 2.25;
	    return n * (_x / d) * _x + 0.9375;
	} else {
		_x -= 2.625;
	    return n * (_x / d) * _x + 0.984375;
	}
}