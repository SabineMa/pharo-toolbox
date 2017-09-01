as yet unclassified
hackUIManager
	UIManager compile: 'logError: anError
		ExceptionReporter handleException: anError.
		super logError: anError'