function bounce_ease_in_out( _x ) {
	if (_x < 0.5) {
		return (1 - bounce_ease_out(1 - 2 * _x)) / 2;
	}
	return (1 + bounce_ease_out(2 * _x - 1)) / 2;
}