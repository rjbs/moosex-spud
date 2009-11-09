package Mashes;
use Moose;
use MooseX::Spud::Masher;

use namespace::autoclean;

mash_in '_powers_var' => (
  spud    => 'PowerSpud',
  handles => [ qw(raise root) ],
  parameters => {
    power_method => 'power',
  },
);

sub __two { 2 }

mash_in '_powers_2' => (
  spud    => 'PowerSpud',
  handles => [ qw(raise root) ],
  parameters => {
    power_method => '__two',
  }
);

has power => (
  is  => 'rw',
  isa => 'Int',
  required => 1,
);

1;
