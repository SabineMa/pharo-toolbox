baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec package: #'ExceptionReport-Core'.
		spec group: 'default' with: #(#'ExceptionReport-Core' ). ].
