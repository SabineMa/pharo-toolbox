as yet unclassified
defaultNameStrategy

	^ [ :exception || className method |  	
		className := exception class name.
		method := exception signalerContext sender method.
		(String streamContents: [:stream |
			stream 
				nextPutAll: method classBinding key asString;
				nextPut: $-;
				nextPutAll: (method selector asString copyWithout: $:);
				nextPut: $-;
				nextPutAll: className]) asFileName ]