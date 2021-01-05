circ_ease_in = function( _x ) {
	return 1 - sqrt(1 - power(_x, 2));
}

circ_ease_out = function( _x ) {
	return sqrt(1 - power(_x - 1, 2));
}

circ_ease_in_out = function( _x ) {
	if (_x < 0.5) {
		return (1 - sqrt(1 - power( 2 * _x, 2))) / 2;
	}
	return (sqrt(1 - power(-2 * _x + 2, 2)) + 1) / 2;
}