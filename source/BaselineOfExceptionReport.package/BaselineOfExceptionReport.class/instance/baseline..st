baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec	
			project: 'Zinc' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: '2.8.3';
					loads: #('REST' );
					repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].

		spec package: #'ExceptionReport-Core'.
		spec package: #'ExceptionReport-Rest' with: [ spec requires: #('ExceptionReport-Core' 'Zinc') ].
		spec 
			group: 'default' with: #(#'ExceptionReport-Core' #'ExceptionReport-Rest' );
			group: 'core' with: #(#'ExceptionReport-Core' ) ].
