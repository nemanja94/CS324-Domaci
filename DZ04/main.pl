#! /usr/bin/perl
use strict;
use warnings;

use lib "/home/nemanja/Documents/Faks/IV semestar/CS324/CS324-Domaci/DZ04/";

use BankAccount;


my $racun = new BankAccount("Marko", "Markovic", 1000);

# Unos novca
print "Unesite iznos novca koji zelite da uplatiti:\nIznos: ";
my $vrednost_novca_za_uplatu = <>;
$racun->unos_novca($vrednost_novca_za_uplatu);

# Trenutno stanje
print "Novo stanje racuna je: \nStanje: " .$racun->trenutno_stanje() . "\n\n\n";

# Podizanje novca
print "Unesite iznos koji zelite da podignete: \nIznos: ";
my $iznos_za_podizanje = <>;
$racun->podizanje_novca($iznos_za_podizanje);

# Trenutno stanje
print "\n\nNovo stanje racuna je: \nStanje: " .$racun->trenutno_stanje() . "\n\n\n";