as yet unclassified
storeDebugContext: aContext description: dict
	| writeStream |
	writeStream := ByteArray new writeStream.
	
	
	[ self 
		serializeContext: aContext 
		on: writeStream.
		
	self client
		url: (self urlFor: dict);
		entity: (ZnByteArrayEntity bytes: writeStream contents);
		put ]
		on: Error 
		do: [ :err | Transcript show: 'error happened: ', err description ]