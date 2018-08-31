#!usr/bin/perl
use strict;
use warnings;

print "\n#################ZADATAK 4#################n\n";

sub zip(\@\@) {

    my $id     = 0;
    my $brojac = 0;
    my ( $niz1, $niz2 ) = @_;

    if ( scalar my @niz1 != scalar my @niz2 ) {
        die(" nizovi nisu iste veličine, program se završava!");
    }

    my @niz3;

    foreach (@$niz1) {
        @niz3[$brojac] = @$niz1[$id];
        @niz3[ $brojac + 1 ] = @$niz2[$id];
        $id     += 1;
        $brojac += 2;
    }

    return @niz3;
}

my @niz1 = ( 1,   2,   3,   4 );
my @niz2 = ( "a", "b", "c", "d" );

my @noviNiz = zip( @niz1, @niz2 );

print "Elementi niza: ";

foreach (@noviNiz) {
    print "$_ , ";
}
