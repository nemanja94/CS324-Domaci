#!usr/bin/perl
use strict;
use warnings;

print "\n#################ZADATAK 2#################n\n";

my %tekst  = ();
my $string = "";
my $id     = 1;

open( my $f, '<', 'zad2-doc' );

while (<$f>) {
    $string = $_;
    $tekst{$id} = $string;
    $id++;
}

for my $key ( keys %tekst ) {
    print "$key=> " . $tekst{$key} . "\n";
}

$string = $tekst{ $id - 1 };
$tekst{ $id - 1 } = $tekst{ $id - ( $id - 1 ) };
$tekst{ $id - ( $id - 1 ) } = $string;

print "Izgled posle promenjenog teksta \n";

for my $key ( keys %tekst ) {
    print "$key=> " . $tekst{$key};
}

close $f;
