function ease_in_out_quart( _x ) {
	if (_x < 0.5) {
		return 	8 * _x * _x * _x * _x;
	}
	return 1 - power(-2 * _x + 2, 4) / 2;
}