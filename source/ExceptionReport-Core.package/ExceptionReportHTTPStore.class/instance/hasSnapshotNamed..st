testing
hasSnapshotNamed: dict
	^ (self client
		url: (self urlFor: dict);
		head;
		response) status = 200