from Baza import Baza


class Person:
    name = ""
    lastName = ""
    age = 0
    con = ""

    def fetchPerson(self):
        """ Funkcija koja vraca sve upise iz tabele Persons """

        con = Baza.povezi()

        with con.cursor() as cursor:
            cursor.execute("SELECT * FROM CS324.Persons")

            for row in cursor:
                print(row['persons_name'],
                      row['persons_lastname'], row['persons_age'])

    def persistPerson(self, name, lastname, age):
        """ Finkcija koje upisuje u tabelu Persons """
        con = Baza.povezi()

        with con.cursor() as cursor:
            cursor.execute(
                "INSERT INTO `Persons` (`persons_id`, `persons_name`, `persons_lastname`, `persons_age`) VALUES (NULL, %s, %s, %s); ",
                (name, lastname, age))

        con.commit()

        print("Uspesan unos: \nIme: ", name,
              "\nPrezime: ", lastname, "\Staros: ", age)
