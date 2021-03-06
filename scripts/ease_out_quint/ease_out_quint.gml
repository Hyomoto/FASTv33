/// @func ease_out_quint
/// @param {float}	t	A float 0.0 - 1.0
/// @desc	An easing function.  Check <https://easings.net/> for examples on how these functions
///		behave.
/// @returns float
function ease_out_quint( _x ) {
	if ( is_numeric( _x ) == false )
		throw new InvalidArgumentType( "ease_out_quint", 0, _x, "real" );
	if ( _x < 0.0 || _x > 1.0 )
		throw new ValueOutOfBounds( "ease_out_quint", _x, 0.0, 1.0 );
	
	return 1 - power(1 - _x, 5);
	
}
