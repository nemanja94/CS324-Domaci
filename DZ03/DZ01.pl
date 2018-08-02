#! /usr/bin/perl
use strict;
use warnings;

my @niz = (1 .. 10);
my $element = "";

foreach $element (@niz) {
    print $element . "^2" . " = " . $element * $element . "\n";
}