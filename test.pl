#!perl -w
use strict;
use Test::More tests => 9;
require_ok('Module::CoreList');

ok($Module::CoreList::version{5.00503},    "5.00503");

ok(!exists $Module::CoreList::version{5.00503}{attributes},
   "attributes weren't in 5.00503");

ok($Module::CoreList::version{5.00601},    "5.00601");

ok(exists $Module::CoreList::version{'5.00601'}{attributes},
   "attributes were in 5.6.1");

ok($Module::CoreList::version{5.00703},    "5.00703");

ok(exists $Module::CoreList::version{5.00703}{'Attribute::Handlers'},
   "Attribute::Handlers were bundled with 5.7.3");

is(Module::CoreList->first_release('File::Spec'), 5.005_03,
   "File::Spec was first bundled in 5.005_03");

is(Module::CoreList->first_release('File::Spec', 0.82), 5.006_01,
   "File::Spec reached 0.82 with 5.006_01");
