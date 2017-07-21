accessing
nameStrategy
	^ nameStrategy ifNil: [ 
		nameStrategy := self class defaultNameStrategy ]