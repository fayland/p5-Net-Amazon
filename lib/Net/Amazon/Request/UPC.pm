######################################################################
package Net::Amazon::Request::UPC;
######################################################################
use base qw(Net::Amazon::Request);

##################################################
sub new {
##################################################
    my($class, %options) = @_;

    if(exists $options{upc}) {
        $options{UpcSearch} = $options{upc};
        delete $options{upc};
    } else {
        die "Mandatory parameter 'upc' not defined";
    }

    my $self = $class->SUPER::new(%options);

    bless $self, $class;   # reconsecrate
}

1;

__END__

=head1 NAME

Net::Amazon::Request::UPC - request class for UPC search

=head1 SYNOPSIS

  use Net::Amazon;
  use Net::Amazon::Request::UPC;

  my $ua = Net::Amazon->new(
      token       => 'YOUR_AMZN_TOKEN'
  );

  my $req = Net::Amazon::Request::UPC->new( 
      upc  => '724381198421',
      mode => 'music',        

  );

    # Response is of type Net::Amazon::Response::UPC
  my $resp = $ua->request($req);

=head1 DESCRIPTION

C<Net::Amazon::Request::UPC> is a class used to submit UPC (product barcode) 
search requests to the Amazon web service.

The UPC number to search for is specified in the C<upc> parameter.
It currently only works in the C<music> department.

Upon success, the response's C<properties()> method will return a single
C<Net::Amazon::Properties::Music> object.

=head2 METHODS

=over 4

=item new(upc => $upc)

Constructs a new C<Net::Amazon::Request::UPC> object, used to query
the Amazon web service for an item with the given UPC number.

=back

=head1 SEE ALSO

=head1 AUTHOR

Mike Schilli, E<lt>m@perlmeister.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Mike Schilli E<lt>m@perlmeister.comE<gt>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut