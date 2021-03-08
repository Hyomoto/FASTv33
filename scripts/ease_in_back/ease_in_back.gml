function ease_in_back( _x ) {
	static c1 = 1.70158;
	static c3 = c1 + 1;

	return c3 * _x * _x * _x - c1 * _x * _x;
}
