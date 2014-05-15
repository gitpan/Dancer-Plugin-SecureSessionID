%BuildOptions = (%BuildOptions,
    NAME                => 'Dancer::Plugin::SecureSessionID',
    DISTNAME            => 'Dancer-Plugin-SecureSessionID',
    AUTHOR              => 'David Zurborg <zurborg@cpan.org>',
    VERSION_FROM        => 'lib/Dancer/Plugin/SecureSessionID.pm',
    ABSTRACT_FROM       => 'lib/Dancer/Plugin/SecureSessionID.pm',
    LICENSE             => 'open-source',
    PL_FILES            => {},
    PMLIBDIRS           => [qw[ lib ]],
    PREREQ_PM => {
		'Modern::Perl'		=> 0,
        'Test::More'		=> 0,
		'Dancer'			=> 1.312,
		'Crypt::Random'		=> 1.25,
		'MIME::Base64'		=> 3.14,
    },
    dist => {
        COMPRESS            => 'gzip -9f',
        SUFFIX              => 'gz',
        CI                  => 'git add',
        RCS_LABEL           => 'true',
    },
    clean               => { FILES => 'Dancer-Plugin-SecureSessionID-*' },
    depend => {
	'$(FIRST_MAKEFILE)' => 'config/BuildOptions.pm',
    },
);