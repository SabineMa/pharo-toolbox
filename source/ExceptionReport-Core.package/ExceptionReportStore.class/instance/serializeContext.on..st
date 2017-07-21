as yet unclassified
serializeContext: aContext on: stream
	| serializer |
	
	serializer := FLSerializer newDefault.
	self encodeDebugInformationOn: serializer.
	serializer addPostMaterializationAction: [ :materialization | | session |
		session := Processor activeProcess newDebugSessionNamed: 'External stack' startedAt: materialization root.
		Smalltalk tools debugger openOn: session withFullView: true].
	serializer
		serialize: aContext
		on: stream