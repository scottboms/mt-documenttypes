#!/usr/bin/perl -w
#
# Copyright (c) 2009 Scott Boms
# http://www.scottboms.com
# Version 1.0

package MT::Plugin::DocumentTypes;

use MT;
use File::Basename qw/dirname/;
use File::Spec;

use strict;
use warnings;

use base qw( MT::Plugin );
use vars qw($VERSION);
our $VERSION = '1.0';

require MT::Asset::Office;
require MT::Asset::Zip;
require MT::Asset::PDF;

my $plugin = MT::Plugin::DocumentTypes->new({
  id            => "documenttypes",
  name          => "DocumentTypes",
  description   => "Adds a new Document asset types supporting Word, PowerPoint, Excel, PDF and Zip document types.",
  icon			=> "dt-icon.gif",
  version       => $VERSION,
  author_name   => "Scott Boms",
  author_link   => "http://www.scottboms.com",
});

sub instance { $plugin }

MT->add_plugin($plugin);

sub init_registry {
  my $plugin = shift;
  $plugin->registry({
    object_types => {
      'asset.office' => 'MT::Asset::Office',
      'asset.zip' => 'MT::Asset::Zip',
      'asset.pdf' => 'MT::Asset::PDF'
    },
  });
}

1;
__END__