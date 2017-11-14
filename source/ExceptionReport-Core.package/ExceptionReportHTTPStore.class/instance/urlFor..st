accessing
urlFor: dict
	^ uri / (dict at: 'project') / (dict at: 'version') / (self descriptionString: dict)