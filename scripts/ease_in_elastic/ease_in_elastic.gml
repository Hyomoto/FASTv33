function ease_in_elastic( _x ) {
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