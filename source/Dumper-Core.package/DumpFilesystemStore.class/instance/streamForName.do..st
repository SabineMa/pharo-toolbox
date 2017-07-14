accessing
streamForName: aString do: aBlock
	| stream |
	stream := (path / aString) writeStream binary.
	aBlock value: stream.
	stream close.