use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Test::UniqueNames',
    AUTHOR              => 'Josh Heumann <cpan@joshheumann.com>',
    VERSION_FROM        => 'lib/Test/UniqueNames.pm',
    ABSTRACT_FROM       => 'lib/Test/UniqueNames.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Test-UniqueNames-*' },
);
