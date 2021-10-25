use Test::Strict;
use Test::More;

use strict;
use warnings;

local $| = 1;
use File::Spec;

use English qw { -no_match_vars };

#  seems to not test properly under Win32
#  finds too many false positives
if ($OSNAME eq 'MSWin32') {
    plan skip_all => "Skipping use_strict tests due to false positives on $OSNAME";
}

use FindBin qw { $Bin };
my @paths = map {
    File::Spec->catfile ($Bin, qw{..}, $_ )
} qw(bin lib t xt);

all_perl_files_ok( @paths ); # Syntax ok and use strict;
