accessing
urlFor: dict
	^ uri / (dict at: 'project') asString / (dict at: 'version') asString / (self descriptionString: dict) asString