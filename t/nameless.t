#!/usr/bin/perl

use strict;
use warnings;

use Test::Builder::Tester tests => 3;
use Test::More;
use Test::NoWarnings;

use lib 'lib';
use_ok( 'Test::UniqueNames', qw/ had_unique_test_names /);

my $line_num = line_num( +15 );
my $expected_error = "#   Failed test 'all test names unique'
#   at lib/Test/UniqueNames.pm line 156.
# The following 1 test name(s) were not unique:
# Test Name                               Occurrences     Line(s)
# ----------------------------------------------------------------
# <no test name>                              1           $line_num";

my $expected_output = 'ok 1
ok 2 - bar
ok 3 - foo
not ok 4 - all test names unique';

test_err( $expected_error );
test_out( $expected_output );
ok( 1 );
ok( 1, 'bar' );
ok( 1, 'foo' );
had_unique_test_names();
test_test( "all tests have unique names, fails by default when a test is unnamed" );
