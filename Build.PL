use strict;
use Module::Build;

Module::Build->new(
    module_name => "Module::CoreList",
    license     => 'perl',
    script_files => [ 'corelist' ],
    requires    => {
        'Test::More'      => 0,
        'Module::Build'   => '0.18', # shabang line fixup
    },
    create_makefile_pl => 'passthrough',
   )
  ->create_build_script;
