# Test app for Dancer issue 961

Link: [PerlDancer/Dancer #961](https://github.com/PerlDancer/Dancer/issues/961)

Reproduction:

	# clone this repo
	# set up a clean perl (plenv || perlbrew and Carton)
	cd dancer961
	carton install
	# now you have Dancer, Plack, Starman, and their deps, locally
	carton exec testapp/bin/start.pl

Sample output on my machine is included in [error.log](error.log).

Fails for me in a Docker ubuntu (quantal) container, an AWS EC2 instance
(32-bit Amazon Linux, ami-3b355a52 in us-east-1), and the CentOS 6 machine I
use for actual development.
