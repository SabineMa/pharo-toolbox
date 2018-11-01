baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec package: #'ExceptionReport-Core'.
		spec package: #'ExceptionReport-Rest' with: [ spec requires: #('ExceptionReport-Core' ) ].

		spec 
			group: 'default' with: #(#'ExceptionReport-Core' #'ExceptionReport-Rest' );
			group: 'core' with: #(#'ExceptionReport-Core' ) ].
