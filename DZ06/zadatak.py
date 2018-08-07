########################################################################################################################

# dz01
# Kreiranje funkcije foo() koja prima tri argumenta


def foo(a, b, c="+"):  # Treci argument je predefinisan kao +

    if c in ("*", "+"):  # Proverava da li je treci argument jedan od navedenih

        if c == "+":  # Ukoliko jeste jedan sa spiska, proverava da li je to znak +
            print(a + b)  # Ukoliko je znak +, sabira prva dva argumenta

        elif c == "*":  # Ukoliko jeste jedan sa spiska, a nije znak +, proverava da li je to znak *
            print(a * b)  # Ukoliko je znak *, mnozi prva dva argumenta

    else:  # Ukoliko nije jedan sa spiska, ispisuje korisniku da je pogresno uneo
        print("Pogresan unos")


# Poziv funkcije foo() i prosledjivanje sva tri parametra
print("\nPoziv funkcije foo() sa trecim parametrom +")
foo(1, 2, "+")

print("\nPoziv funkcije foo() sa trecim parametrom *")
foo(1, 2, "*")

print("\nPoziv funkcije foo() sa trecim parametrom koji nije na spisku dozvoljenih")
foo(1, 2, "/")

# Poziv funkcije foo() i prosledjivanje samo prva dva parametra
print("\nPoziv funkcije foo() sa prosledjivanjem samo prva dva parametra")
foo(1, 2)

########################################################################################################################


########################################################################################################################

# dz02
niz = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
duzina_niza = len(niz)
element = 0


def first():
    return (niz[0])


def last():
    return (niz[-1])


def tail():
    i = len(niz) - 1
    index = 1
    novi_niz = []

    while index < 9:
        novi_niz.append(niz[index])
        index = index + 1

    return novi_niz


def init():
    i = len(niz) - 1
    index = 0
    novi_niz = []

    while index < 8:
        novi_niz.append(niz[index])
        index = index + 1

    return novi_niz


# first()
print("\nFunkcija first()")
print(first())

# last()
print("\nFunkcija last()")
print(last())

# tail()
print("\nFunkcija tail()")
print(tail())

# init()
print("\nFunkcija init()")
print(init())

########################################################################################################################
