quad_ease_in = function( _x ) {
	return _x * _x;	
}
quad_ease_out = function( _x ) {
	return 1 - (1 - _x) * (1 - _x);
}
quad_ease_in_out = function( _x ) {
	if (_x < 0.5) {
		return 2 * _x * _x;
	}
	return 1 - power(-2 * _x + 2, 2) / 2;
}