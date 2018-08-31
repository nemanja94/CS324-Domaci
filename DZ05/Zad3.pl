#!usr/bin/perl
use strict;
use warnings;

print "\n#################ZADATAK 3#################n\n";

sub srednjaVrednost {
    my @niz = @_;
    my $suma;
    foreach (@niz) {
        $suma += $_;
    }
    return $suma / @niz;
}

my @nizBrojeva = ( 1, 2, 3, 4 );
my $avg = srednjaVrednost(@nizBrojeva);

print "Srednja vrednost brojeva iz niza { @nizBrojeva } je:\n$avg\n\n";

my @nizBrojevaIznadProseka = ();

foreach my $broj (@nizBrojeva) {

    if ( $broj > $avg ) {
        push @nizBrojevaIznadProseka, $broj;
    }
}

print
    "Iz niza { @nizBrojeva } brojevi koji su iznad proseka su: \n@nizBrojevaIznadProseka";
