sine_ease_in = function( _x ) {
	return 1 - cos((_x * pi) / 2);
}

sine_ease_out = function( _x ) {
	return sin((_x * pi) / 2);
}

sine_ease_in_out = function( _x ) {
	return -(cos(pi * _x) - 1) / 2;
}