function ease_out_expo( _x ) {
	switch _x {
		case 1:
			return 1;
		break;
		default:
			return 1 - power(2, -10 * _x);
		break;
	}
}