function ease_in_out_cubic( _x ) {
	if (_x < 0.5) {
		return 4 * _x * _x * _x;
	}
	return 1 - power(-2 * _x + 2, 3) / 2;
}