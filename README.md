# Test app for Dancer issue 961

## Links

* [PerlDancer/Dancer issue #961](https://github.com/PerlDancer/Dancer/issues/961)
* [plenv](https://github.com/tokuhirom/plenv)
* [Carton](https://github.com/miyagawa/carton)

## Reproduction

	# clone this repo
	# set up a clean perl (plenv || perlbrew and Carton)
	cd dancer961
	carton install --deployment
	# now you have Dancer and dependencies, locally
	carton exec testapp/bin/app.pl

Sample output on my machine is included in [error.log](error.log).

Fails for me in a Docker ubuntu (quantal) container, an AWS EC2 instance
(32-bit Amazon Linux, ami-3b355a52 in us-east-1), and the CentOS 6 machine I
use for actual development.

## Additional Note

The YAML file itself may also be tested (note that this path is copied
directly from the error message):

	$ carton exec perl
	use YAML qw(LoadFile Dump);
	print Dump(LoadFile("/home/ec2-user/dancer961/testapp/environments/development.yml"));
	print "\nOK / perl $]\n";
	__END__

Output from the above should be the YAML settings, minus comments.
