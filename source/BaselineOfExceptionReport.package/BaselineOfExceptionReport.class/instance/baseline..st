baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec package: #'ExceptionReport-Core' with: [
				spec requires: #('Fuel' ). ].
		spec package: #'ExceptionReport-Rest' with: [ spec requires: #('ExceptionReport-Core' 'Zinc') ].
		spec project: 'Fuel' with: [
				spec
					className: #ConfigurationOfFuel;
					versionString: #'bleedingEdge';
					repository: 'http://smalltalkhub.com/mc/Pharo/Fuel/main' ].
		spec	
			project: 'Zinc' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: '2.8.3';
					loads: #('REST' );
					repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].

		spec 
			group: 'default' with: #(#'ExceptionReport-Core' #'ExceptionReport-Rest' );
			group: 'core' with: #(#'ExceptionReport-Core' ) ].
