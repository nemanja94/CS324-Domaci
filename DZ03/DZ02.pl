#! /usr/bin/perl
use strict;
use warnings;

my @numbers = (1 .. 10);
my $broj_elemenata_niza = scalar(@numbers);
my $brojac = 0;
my $element_niza = "";

while ($brojac < $broj_elemenata_niza) {
	$element_niza = shift @numbers;
	print $element_niza . "^2" . " = " . $element_niza * $element_niza . "\n";
	$brojac++;
}

