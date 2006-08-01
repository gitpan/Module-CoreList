use ExtUtils::MakeMaker;

push @extra, 'INSTALLDIRS' => 'perl' if $] >= 5.009002;

WriteMakefile
(
    'NAME' => 'Module::CoreList',
    'VERSION_FROM' => 'lib/Module/CoreList.pm',
    'PREREQ_PM' => {
	'Test::More' => '0',
	'version' => '0',
    },
    'EXE_FILES' => [ 'corelist' ],
    'PL_FILES' => {},
    @extra,
)
;
