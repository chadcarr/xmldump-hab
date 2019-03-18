#!/usr/bin/perl

use XML::Writer;

my $writer = XML::Writer->new(OUTPUT => "self");
$writer->dataElement(dev => "sda1");

$|++; # autoflush STDOUT

while (1) {
    print("$writer\n");
    sleep(10);
}
