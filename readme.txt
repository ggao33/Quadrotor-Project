1.	Plese use the .m script to run every simulink model.
	Example:
	Qb_script.m is used for Qb.slx

2.	Before running any simulink model under the current path
	'startup_rvc' and 'mdl_quadrotor' are required to load rvc toolbox
	and quadrotor parameters. These two commands are included at the beginning
	of every script.

3.	Please use the included .m files instead of Peter Corke's original script/function. 
	Because some of the parameters are modified based on this project. If there's a conflict,
	please make sure everything is running under the right path.

4.	datasheet.pdf includes all figures and results which aren't included in the report.

5.	'startup_rvc':			load RVC toolbox
	'mdl_quadrotor':		load quadrotor parameters
	'quadrotor_dynamics':	quadrotor dynamics initilizations and calculations
	'quadrotor_plot':		3D animation
	'plotter': 				2D & 3d results
	'crash_tester': 		send warnings if the quadrotor crashes/lands
	'z_cmp': 				see z-direction variations vs. time

	6.	 Youtube links of Demo:
	Qb: https://youtu.be/R0hvc1k2qf4
	Qc: https://youtu.be/-lSsPgVWtfU
	Qd: https://youtu.be/c2LYp_rBygo
	Qf: https://youtu.be/VhAoh858pnk
