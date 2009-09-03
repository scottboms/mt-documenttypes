# $Id: Document.pm 0001 2009-08-31 03:21:00Z Scott Boms $

package MT::Asset::Office;

use strict;
use base qw( MT::Asset );

__PACKAGE__->install_properties( { class_type => 'office', } );

# List of supported file extensions (to aid the stock 'can_handle' method.)
sub extensions {
    my $pkg = shift;
    return $pkg->SUPER::extensions( [ qr/docx?m?/i, qr/dotx?m?/i, qr/xlsx?m?b?/i, qr/xltx?m?/i, qr/xlam?/i, qr/pptx?m?/i, qr/potx?m?/i, qr/ppsx?m?/i, qr/ppam?/i ] );
}

sub class_label {
    MT->translate('Microsoft Office Document');
}

sub class_label_plural {
    MT->translate('Microsoft Office Documents');
}

# translate('office')

1;

__END__

=head1 NAME

MT::Asset::Audio

=head1 AUTHOR & COPYRIGHT

Please see the L<MT/"AUTHOR & COPYRIGHT"> for author, copyright, and
license information.

=cut
