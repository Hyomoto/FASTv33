/// @func Script
/// @param FileScript
function Script( _file ) : DsChain() constructor {
// # Method Declaration
	static first	= function() {
		if ( links == 0 ) { return undefined; }
		
		return chain;
		
	}
	static has_next	= function( _last ) {
		return ( links == 0 ? false : _last == undefined || _last.chain != undefined );
		
	}
	static next		= function( _last ) {
		if ( links == 0 ) { return undefined; }
		if ( _last == undefined || _last.chain == undefined ) {
			_last	= chain;
			
		} else {
			_last	= _last.chain;
			
		}
		return _last;
		
	}
	static find	= function( _value ) {
		if ( links == 0 ) { return undefined; }
		
		var _seek	= chain;
		
		while ( _seek != undefined ) {
			if ( _seek.value == _value ) {
				return _seek;
				
			}
			_seek	= _seek.chain;
			
		}
		return undefined;
		
	}
	static add	= function( _value ) {
		var _link	= new ChainLink( _value );
		
		if ( final == undefined ) { 
			chain		= _link;
			
		} else {
			final.chain	= _link;
			
		}
		final		= _link;
		
		++links;
		
		return _link;
		
	}
	static clearSuper	= clear;
	static clear	= function() {
		final	= undefined;
		
		clearSuper();
		
	}
	static execute	= function( _engine, _local, _last ) {
		var _depth	= -1;
		var _ex;
		
		_local	= ( _local == undefined ? local : _local );
		
		while ( has_next( _last ) ) {
			_last	= next( _last );
			_ex		= _last.value;
			
			if ( is_string( _ex ) ) {
				syslog( "RTP: ", _last.value );
				
				return _last;
				
			}
			//_engine.log_low( ( _ex.keyword != "" ? _ex.keyword : "" ), ( _ex.target != undefined ? "(" + _ex.target + ") " : " " ), _ex.expression );
			
			if ( _ex.ends ) {
				return _ex.execute( _engine, _local );
				
			}
			if ( _ex.close ) {
				if ( _ex.keyword == "end" ) {
					--_depth;
					
					continue;
					
				}
				
			}
			if ( _ex.open ) {
				if ( _depth < _ex.depth && _ex.execute( _engine, _local ) ) {
					++_depth;
					
					continue;
					
				}
				_last	= _ex.goto;
				
			} else {
				_ex.execute( _engine, _local );
				
			}
			
		}
		return undefined;
		
	}
// # Variable Declaration
	final	= undefined;
	
// # Creation
	if ( _file != undefined && instanceof( _file ) == "FileScript" ) {
		var _stack	= new DsStack();
		
		while ( _file.eof() == false ) {
			var _final	= final;
			
			add( _file.read() );
			
			if ( is_string( final.value ) ) { continue; }
			if ( final.value.close ) {
				var _this	= _stack.pop();
				
				_this.value.goto	= _final;
				
			}
			if ( final.value.open ) {
				final.value.depth	= _stack.size();
				
				_stack.push( final );
				
			}
			
		}
		_file.discard();
		
		delete _stack;
		
	}
	
}
