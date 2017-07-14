as yet unclassified
persistDebugContext: aContext name: aString
	self 
		streamForName: aString
		do: [ :stream |
			self 
				serializeContext: aContext 
				on: stream ]