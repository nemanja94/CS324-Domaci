import pymysql.cursors


class Baza:

    def povezi():
        """ Funkcija za uspostavljanje kenkcije sa bazom """

        hostname = '192.168.1.100'
        username = 'root'
        password = 'Root@1211'
        database = 'CS324'

        try:
            conn = pymysql.connect(host=hostname, user=username, passwd=password, db=database,
                                   cursorclass=pymysql.cursors.DictCursor)
            return conn
        except pymysql.err.Error as errCon:
            print(errCon)
