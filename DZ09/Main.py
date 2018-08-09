from Person import Person
from Deljenje_recenice import Deljenje_recenice


class Main:

    def __init__(self):
        """ Konstruktor Main klase u kome se pozivaju funkcije za rad sa bazom i deljenje recenice na reci"""
        person = Person()

        print("Prikz svih osoba iz tabele Persons:")
        person.fetchPerson()

        print("\nUpis nove osobe u tabelu Persons:")
        person.persistPerson("Milica", "Milic", 30)

        print("\nDeljenje prosledjene recenice na reci:")
        Deljenje_recenice.funk("Ovo je podeljena prosledjena racenica")


main = Main()
