#!/usr/bin/perl

use strict;
use warnings;

print "\nUpisite neku rec ili recenicu: \n\nUnos: ";

my @reci; #Niz u koji ce biti smestene kao elementi sve unete reci
my @obrnuteReci; #Niz u kojem ce se nalaziti sve unete reci, samo ce redosled slova u svakoj reci biti obrnut

while (<STDIN>) { #Izvrsava se sve dok korisnik ne unese karakter q ili quit

	if ( $_ =~ /q/ ) { #Ukoliko je unos karakter q, petlja se zavrsava
		last;
	}else {
		@reci = split ' ', $_; #Unetu rec ili recenicu deli u reci i smesta u niz @reci
	}

	for my $i ( 0 .. $#reci ) { #Petlja se izvrsava onoliko puta koliko niz @reci ima elemenata
		$obrnuteReci[$i] = reverse( $reci[$i] ); #Svaka od reci se smesta u niz @obrnuteReci, posto se redosled slova u toj reci okrene
	}

	#Prikazivanje razultatta
	print "\nUneli ste: ##########################################\n\nRešenje: ";
	print "@obrnuteReci \n\n#####################################################\n\n";
	print "Za izlaz iz programa unesite 'q' ili ponovo unesite rec: \n\nUnos: ";
}