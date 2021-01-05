cubic_ease_in = function( _x ) {
	return _x * _x * _x;
}

cubic_ease_out = function( _x ) {
	return 1 - power(1 - _x, 3);
}

 cubic_ease_in_out = function( _x ) {
	if (_x < 0.5) {
		return 4 * _x * _x * _x;
	}
	return 1 - power(-2 * _x + 2, 3) / 2;
}