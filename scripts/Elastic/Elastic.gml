elastic_ease_in = function( _x ) {
	static c = (2 * pi) / 3;
	
	switch (_x == 0) {
		case 0:
			return 0;
		break;
		case 1: 
			return 1;
		break;
		default : 
			return -power(2, 10 * _x - 10) * sin((_x * 10 - 10.75) * c);
		break;
	} 
}

elastic_ease_out = function( _x ) {
	static c = (2 * pi) / 3;
	switch (_x == 0) {
		case 0:
			return 0;
		break;
		case 1: 
			return 1;
		break;
		default : 
			return power(2, -10 * _x) * sin((_x * 10 - 0.75) * c) + 1;
		break;
	}
}

elastic_ease_in_out = function( _x ) {
	static c = (2 * pi) / 4.5;
	
	switch (_x == 0) {
		case 0:
			return 0;
		break;
		case 1: 
			return 1;
		break;
		default : 
			if (_x < 0.5) {
				return -(power(2, 20 * _x - 10) * sin((20 * _x - 11.125) * c)) / 2;	
			}
			return (power(2, -20 * _x + 10) * sin((20 * _x - 11.125) * c)) / 2 + 1;
		break;
	}
}