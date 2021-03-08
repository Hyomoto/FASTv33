function ease_in_expo( _x ) {
	switch _x {
		case 0:
			return 0;
		break;
		default:
			return power(2, 10 * _x - 10);
		break;
	}
}