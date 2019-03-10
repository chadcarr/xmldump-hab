#!/usr/bin/perl

use XML::Writer;

my $writer = XML::Writer->new(OUTPUT => "self");
$writer->dataElement( device => "/dev/sda1" );
print("$writer\n");
