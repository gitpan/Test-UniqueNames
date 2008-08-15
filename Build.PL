use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Test::UniqueNames',
    license             => 'perl',
    dist_author         => 'Josh Heumann <cpan@joshheumann.com>',
    dist_version_from   => 'lib/Test/UniqueNames.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Test-UniqueNames-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
