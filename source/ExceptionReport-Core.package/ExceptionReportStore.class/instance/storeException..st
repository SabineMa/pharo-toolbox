as yet unclassified
storeException: exception
	| description |
	description := self descriptionFor: exception.
	(self hasSnapshotNamed: description)
		ifFalse: [ 
			self 
				storeDebugContext: (self createDebugContextFrom: exception)
				description: description ]