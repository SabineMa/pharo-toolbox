initialization
streamForName: aString do: aBlock

	dict
		at: aString
		put: (ByteArray streamContents: [ :stream |
				aBlock value: stream ] )