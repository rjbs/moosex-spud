package PowerSpud;
use MooseX::Spud;
use namespace::autoclean;

sub raise {
  my ($self, $x) = @_;

  my $method = $self->power_method;
  my $power  = $self->consumer->$method;

  return $x ** $power;
}

sub root {
  my ($self, $x) = @_;

  my $method = $self->power_method;
  my $power  = $self->consumer->$method;

  return $x ** (1/$power);
}

1;
