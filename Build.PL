use strict;
use Module::Build 0.18;

Module::Build->new(
    module_name => "Module::CoreList",
    license     => 'perl',
    script_files => [ 'corelist' ],
    requires    => {
        'Test::More'      => 0,
    },
    create_makefile_pl => 'traditional',
   )
  ->create_build_script;
