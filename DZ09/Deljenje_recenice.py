class Deljenje_recenice:

    def funk(arg):
        """ Funkcija koja prima recenicu i delije je naraci koje naknadno ispisiuje """

        lista = arg.split(' ')

        i = 0

        while i < len(lista):
            print(lista[i])
            i += 1
