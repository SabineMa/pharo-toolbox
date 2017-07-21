as yet unclassified
registerOnZnLog
	^ ZnLogEvent announcer
		when: ZnServerErrorEvent do: [ :event |
			self handleZnLogEvent: event ]