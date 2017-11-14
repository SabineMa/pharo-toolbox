instance creation
descriptionFor: exception
	| method |
	method := exception signalerContext sender method.
	^ { 
		'class' -> method classBinding key asString.
		'selector' -> (method selector asString copyWithout: $:) .
		'exceptionClass' -> (exception class name) } asDictionary 