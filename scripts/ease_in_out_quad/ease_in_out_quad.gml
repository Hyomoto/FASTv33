function ease_in_out_quad( _x ) {
	if (_x < 0.5) {
		return 2 * _x * _x;
	}
	return 1 - power(-2 * _x + 2, 2) / 2;
}