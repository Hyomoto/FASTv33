function ease_in_out_expo( _x ) {
	switch _x {
		case 0:
			return 0;
		break;
		case 1:
			return 1;
		break;
		default:
			if (_x < 0.5) {
				return power(2, 20 * _x - 10) / 2;
			}
			return (2 - power(2, -20 * _x + 10)) / 2;
		break;
	}
}