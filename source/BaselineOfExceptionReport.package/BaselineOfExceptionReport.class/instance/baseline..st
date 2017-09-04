baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec package: #'ExceptionReport-Core' with: [
				spec requires: #('Fuel' ). ].
		spec project: 'Fuel' with: [
				spec
					className: #ConfigurationOfFuel;
					versionString: #'bleedingEdge';
					repository: 'http://smalltalkhub.com/mc/Pharo/Fuel/main' ].
		spec group: 'default' with: #(#'ExceptionReport-Core' ). ].


