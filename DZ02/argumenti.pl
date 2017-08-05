#/usr/bin/perl

#Aktivira koriscenja upozorenja
use warnings;

#Promenljive
$broj_prosledjenih_argumenata = $#ARGV;
$brojac = 0;

#Logika koja proverava unos korisnika 
if ($broj_prosledjenih_argumenata <= 0) {

  print "\nNema prosledjenih argumenata!\n\n"

} else {

  print "\nProsledjeni argumenati su: \n\n";

  foreach my $a(@ARGV) {
  	print "Argument $brojac : $a\n";
  	$brojac++;
  }

print "\n";

}
