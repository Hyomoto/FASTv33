function ease_in_out_quint( _x ) {
	if (_x < 0.5) {
		return 16 * _x * _x * _x * _x * _x;
	}
	return 1 - power(-2 * _x + 2, 5) / 2;
}