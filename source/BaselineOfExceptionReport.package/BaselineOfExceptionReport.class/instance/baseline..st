baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec package: #'ExceptionReport-Core'.
		spec group: 'default' with: #(#'ExceptionReport-Core' ). ].
