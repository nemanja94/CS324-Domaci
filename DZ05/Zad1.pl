#!usr/bin/perl
use strict;
use warnings;

print "\n#################ZADATAK 1#################n\n";
my %licnosti = (
    "Željko" => "Joksimović",
    "Jelena"  => "Karleiša",
    "Slavko"  => "Banjac"
);

print "Unesite ime poznate ličnosti: ";

chomp( my $ime = <STDIN> );

if ( exists $licnosti{$ime} ) {
    print "Za uneto ime $ime, prezime je : $licnosti{$ime}\n";
}
else {
    print "Za uneto ime, ne postoji prezime\n";
}
