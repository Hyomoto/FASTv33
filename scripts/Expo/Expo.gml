expo_ease_in = function( _x ) {
	switch _x {
		case 0:
			return 0;
		break;
		default:
			return power(2, 10 * _x - 10);
		break;
	}
}

expo_ease_out = function( _x ) {
	switch _x {
		case 1:
			return 1;
		break;
		default:
			return 1 - power(2, -10 * _x);
		break;
	}
}

expo_ease_in_out = function( _x ) {
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