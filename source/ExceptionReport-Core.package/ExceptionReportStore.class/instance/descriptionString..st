as yet unclassified
descriptionString: dict
	^ (String streamContents: [:stream |
			stream 
				nextPutAll: (dict at: 'class');
				nextPut: $-;
				nextPutAll: (dict at: 'selector');
				nextPut: $-;
				nextPutAll: (dict at: 'exceptionClass') ])