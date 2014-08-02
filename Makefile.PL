use strict;
use warnings;
use ExtUtils::MakeMaker;
use File::Copy 'copy';

WriteMakefile
    NAME => 'Remote::Command',
    VERSION_FROM => 'lib/Remote/Command.pm',
    EXE_FILES => [glob "bin/* script/*"],
    NO_MYMETA => 1,
;

copy 'META.json' => 'MYMETA.json' if -f 'META.json';

