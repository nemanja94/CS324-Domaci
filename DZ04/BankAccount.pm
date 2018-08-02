#! /usr/bin/perl
use strict;
use warnings;

package BankAccount;


sub new{
	my $class = shift;
	my $self = {
		_ime => shift,
		_prezime => shift,
		_stanje_racuna => shift,
	};

	# Print all the values just for clarification.
	print "\nIme: $self->{_ime}\n";
	print "Prezime: $self->{_prezime}\n";
	print "Stanje racuna: $self->{_stanje_racuna}\n\n\n";

	bless $self, $class;
	return $self;
}


sub unos_novca {
	my $self = shift;
	my $unos = shift;

	if ($unos < 500) {
		print "Pogresan unos!\nIznos ne može biti manji od 500\n\n";
		exit 0;
	} else {
		return $self->{_stanje_racuna} = $self->{_stanje_racuna} + $unos;
	}
}


sub trenutno_stanje {
	my($self) = shift;
	return $self->{_stanje_racuna};
}


sub podizanje_novca {
	my $self = shift;
	my $suma_za_podizanje = shift;
	my $trenutno_stanje_racuna = $self->{_stanje_racuna};

	if ($suma_za_podizanje > $trenutno_stanje_racuna){
		print "Pogresan unos!\nIznos za podizanje ne može biti veći od $trenutno_stanje_racuna\n";
		exit 0;
	} elsif ($suma_za_podizanje < 500){
		print "Pogresan unos!\nIznos za podizanje ne može biti manji od 500\n";
		exit 0;
	} else {
		return $self->{_stanje_racuna} = $self->{_stanje_racuna} - $suma_za_podizanje;
	}
}
1;