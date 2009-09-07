# -*- perl -*-
# !!! DO NOT EDIT !!!
# This file was automatically generated.
package Net::Amazon::Validate::ItemSearch::us::SilverMerchants;

use 5.006;
use strict;
use warnings;

sub new {
    my ($class , %options) = @_;
    my $self = {
        '_default' => 'Title',
        %options,
    };

    push @{$self->{_options}}, 'Actor';
    push @{$self->{_options}}, 'Artist';
    push @{$self->{_options}}, 'AudienceRating';
    push @{$self->{_options}}, 'Author';
    push @{$self->{_options}}, 'Brand';
    push @{$self->{_options}}, 'BrowseNode';
    push @{$self->{_options}}, 'City';
    push @{$self->{_options}}, 'Composer';
    push @{$self->{_options}}, 'Conductor';
    push @{$self->{_options}}, 'Director';
    push @{$self->{_options}}, 'Keywords';
    push @{$self->{_options}}, 'Manufacturer';
    push @{$self->{_options}}, 'MusicLabel';
    push @{$self->{_options}}, 'Neighborhood';
    push @{$self->{_options}}, 'Orchestra';
    push @{$self->{_options}}, 'Publisher';
    push @{$self->{_options}}, 'TextStream';
    push @{$self->{_options}}, 'Title';

    bless $self, $class;
}

sub user_or_default {
    my ($self, $user) = @_;
    if (defined $user && length($user) > 0) {    
        return $self->find_match($user);
    } 
    return $self->default();
}

sub default {
    my ($self) = @_;
    return $self->{_default};
}

sub find_match {
    my ($self, $value) = @_;
    for (@{$self->{_options}}) {
        return $_ if lc($_) eq lc($value);
    }
    die "$value is not a valid value for us::SilverMerchants!\n";
}

1;

__END__

=head1 NAME

Net::Amazon::Validate::ItemSearch::us::SilverMerchants;

=head1 DESCRIPTION

The default value is Title, unless mode is specified.

The list of available values are:

    Actor
    Artist
    AudienceRating
    Author
    Brand
    BrowseNode
    City
    Composer
    Conductor
    Director
    Keywords
    Manufacturer
    MusicLabel
    Neighborhood
    Orchestra
    Publisher
    TextStream
    Title

=cut