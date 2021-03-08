 function ease_in_out_back( _x ) {
	static c1 = 1.70158;
	static c2 = c1 * 1.525;
	
	if (_x < 0.5) {
		return 	(power(2 * _x, 2) * ((c2 + 1) * 2 * _x - c2)) / 2;
	}
	return (power(2 * _x - 2, 2) * ((c2 + 1) * (_x * 2 - 2) + c2) + 2) / 2;
}   