package Plack::Debugger::Panel::Dancer2::Version;

#ABSTRACT: Plack Debugger Panel for displaying Dancer2 Version
use strict;
use warnings;

use parent 'Plack::Debugger::Panel';

sub new {
    my $class = shift;
    my %args = @_ == 1 && ref $_[0] eq 'HASH' ? %{ $_[0] } : @_;

    $args{title} = 'Dancer2::Version';

    $args{'after'} = sub {
        my $self = shift;

        my $version = '0.160001';
        $self->set_subtitle($Dancer2::VERSION);
    };
    $class->SUPER::new( \%args );
}

1;

__END__

=head1 DESCRIPTION

Display Dancer2's version in Plack::Debugger.

=head1 SEE ALSO

L<Plack::Debugger>, L<Dancer2> 

=head1 AUTHOR

