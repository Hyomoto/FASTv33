function ease_out_back( _x ) {
	static c1 = 1.70158;
	static c3 = c1 + 1;

	return 1 + c3 * power(_x - 1, 3) + c1 * power(_x - 1, 2);
}