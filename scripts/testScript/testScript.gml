#macro Critical:ERROR_LEVEL	1
#macro Nonfatal:ERROR_LEVEL	2
#macro Notify:ERROR_LEVEL	3

var _timer	= new Timer( "$S", 5 );


syslog( "compilation took ", _timer, " seconds" );
