# $Id: Zip.pm 0001 2009-08-31 03:21:00Z Scott Boms $

package MT::Asset::Zip;

use strict;
use base qw( MT::Asset );

__PACKAGE__->install_properties( { class_type => 'zip', } );

# List of supported file extensions (to aid the stock 'can_handle' method.)
sub extensions {
    my $pkg = shift;
    return $pkg->SUPER::extensions( [ qr/zip/i, qr/gz/i ] );
}

sub class_label {
    MT->translate('Zip File');
}

sub class_label_plural {
    MT->translate('Zip Files');
}

# translate('zip')

1;

__END__

=head1 NAME

MT::Asset::Audio

=head1 AUTHOR & COPYRIGHT

Please see the L<MT/"AUTHOR & COPYRIGHT"> for author, copyright, and
license information.

=cut
