as yet unclassified
storeDebugContext: aContext description: dict
	| stream |
	stream := (path / (self filenameFor: dict) ) writeStream binary.
	[ self 
		serializeContext: aContext 
		on: stream ]
		ensure: [ stream close ]