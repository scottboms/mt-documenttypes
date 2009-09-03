# $Id: PDF.pm 0001 2009-08-31 03:21:00Z Scott Boms $

package MT::Asset::PDF;

use strict;
use base qw( MT::Asset );

__PACKAGE__->install_properties( { class_type => 'pdf', } );

# List of supported file extensions (to aid the stock 'can_handle' method.)
sub extensions {
    my $pkg = shift;
    return $pkg->SUPER::extensions( [ qr/pdf/i ] );
}

sub class_label {
    MT->translate('PDF File');
}

sub class_label_plural {
    MT->translate('PDF Files');
}

# translate('pdf')

1;

__END__

=head1 NAME

MT::Asset::Audio

=head1 AUTHOR & COPYRIGHT

Please see the L<MT/"AUTHOR & COPYRIGHT"> for author, copyright, and
license information.

=cut
