use ExtUtils::MakeMaker;

my $module = 'CoreList.pm';
WriteMakefile('NAME'      => 'Module::CoreList',
              'VERSION_FROM' => $module, # finds $VERSION
              'PREREQ_PM' => { 'Test::More' => 0 });

sub MY::postamble {
    return <<EOF
README: $module
\tpod2text $module > README
EOF
}
