use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME	=> 'Alien::Proj4',
  VERSION_FROM => 'lib/Alien/Proj4.pm',
  PREREQ_PM => {
    'Devel::CheckLib' => 0,
  },
  TEST_REQUIRES => {
    'Test::More' => '0.88',
  },
  META_MERGE => {
    "meta-spec" => { version => 2 },
    resources => {
      bugtracker  => {web=>'https://github.com/PDLPorters/Alien-Proj4/issues'},
      repository => {
	type => 'git',
	url => 'git://github.com/PDLPorters/Alien-Proj4',
	web => 'https://github.com/PDLPorters/Alien-Proj4',
      },
    },
  },
);
