function ease_in_bounce( _x ) {
	return 1 - ease_in_bounce(1 - _x);
}