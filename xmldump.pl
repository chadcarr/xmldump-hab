#!/usr/bin/perl

use XML::Writer;

my $data = {
    [
        {
            device => "/dev/sda1",
            mount => "/boot",
            free => "4M"
        },
        {
            device => "/dev/sda2",
            mount => "/",
            free => "12G"
        }
    ]
}

my $writer = XML::Writer->new(OUTPUT => "self");
$writer->dataElement($data);
print($writer);