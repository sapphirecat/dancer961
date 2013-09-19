#!/usr/bin/env perl

use 5.010;
use warnings;
use strict;

use FindBin qw($Bin);
use File::Basename qw(dirname);

my $APPDIR = dirname($Bin);

my @cmd = ('plackup', "$APPDIR/bin/app.pl");
say STDERR "start.pl using Perl $]";
say STDERR "@cmd";

exec @cmd
	or die "exec failed: $!";
