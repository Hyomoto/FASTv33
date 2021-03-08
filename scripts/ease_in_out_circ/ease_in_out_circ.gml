function ease_in_out_circ( _x ) {
	if (_x < 0.5) {
		return (1 - sqrt(1 - power( 2 * _x, 2))) / 2;
	}
	return (sqrt(1 - power(-2 * _x + 2, 2)) + 1) / 2;
}