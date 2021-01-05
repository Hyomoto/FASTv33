quart_ease_in = function( _x ) {
	return _x * _x * _x * _x;
}

quart_ease_out = function( _x ) {
	return 1 - power(1 - _x, 4);
}

quart_ease_in_out = function( _x ) {
	if (_x < 0.5) {
		return 	8 * _x * _x * _x * _x;
	}
	return 1 - power(-2 * _x + 2, 4) / 2;
}