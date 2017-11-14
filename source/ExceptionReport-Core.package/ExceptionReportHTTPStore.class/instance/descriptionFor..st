accessing
descriptionFor: exception
	^ (super descriptionFor: exception)
		at: 'project' put: project;
		at: 'version' put: version;
		yourself