/// @func ease_in_out_circ
/// @param {float}	t	A float 0.0 - 1.0
/// @desc	An easing function.  Check <https://easings.net/> for examples on how these functions
///		behave.
/// @returns float
function ease_in_out_circ( _x ) {
	if ( is_numeric( _x ) == false )
		throw new InvalidArgumentType( "ease_in_out_circ", 0, _x, "real" );
	if ( _x < 0.0 || _x > 1.0 )
		throw new ValueOutOfBounds( "ease_in_out_circ", _x, 0.0, 1.0 );
	
	if (_x < 0.5) { return (1 - sqrt(1 - power( 2 * _x, 2))) / 2; }
	return (sqrt(1 - power(-2 * _x + 2, 2)) + 1) / 2;
	
}
