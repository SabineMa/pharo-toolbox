as yet unclassified
storeException: exception
	| snapshotName |
	snapshotName := self snapshotNameFor: exception.
	(self hasSnapshotNamed: snapshotName)
		ifFalse: [ 
			self 
				persistDebugContext: (self createDebugContextFrom: exception)
				name: snapshotName ]