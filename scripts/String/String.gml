/// @func String
/// @param string
/// @desc	Provides a wrapper for basic strings.
function String() constructor {
	static size	= function() {
		return string_length( _content );
		
	}
	static set	= function( _content ) {
		content	= _content;
		
	}
	static draw	= function( _x, _y, _font, _color ) {
		var _ofont	= draw_get_font();
		var _ocolor	= draw_get_color();
		
		draw_set_font( _font );
		draw_set_color( _color );
		
		draw_text( _x, _y, content );
		
		draw_set_font( _ofont );
		draw_set_color( _ocolor );
		
	}
	static draw_ext	= function( _x, _y, _font, _color, _halign, _valign ) {
		var _ohalign	= draw_get_halign();
		var _ovalign	= draw_get_valign();
		
		draw_set_halign( _halign );
		draw_set_valign( _valign );
		
		draw( _x, _y, _font, _color );
		
		draw_set_halign( _ohalign );
		draw_set_valign( _ovalign );
		
	}
	static width	= function( _font ) {
		var _ofont	= draw_get_font();
		var _width;
		
		draw_set_font( _font );
		
		_width	= string_width( content );
		
		draw_set_font( _ofont );
		
		return _width;
		
	}
	static height	= function( _font ) {
		var _ofont	= draw_get_font();
		var _height;
		
		draw_set_font( _font );
		
		_height	= string_height( content );
		
		draw_set_font( _ofont );
		
		return _height;
		
	}
	static is		= function( _data_type ) {
		return _data_type == String;
		
	}
	static toArray	= function() {
		var _array	= array_create( size() );
		
		var _i = 0; repeat( array_length( _array ) ) {
			_array[ _i ]	= string_char_at( content, _i );
			
			++_i;
			
		}
		return _array;
		
	}
	static toString	= function() {
		return content;
		
	}
	content	= "";
	
	if ( argument_count > 0 ) {
		set( argument[ 0 ] );
		
	}
	
}
