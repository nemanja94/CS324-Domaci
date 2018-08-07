def funk3(lista1, lista2, i=0):
    if i < min(len(lista1), len(lista2)):
        return [lista1[i] + lista2[i]] + funk3(lista1, lista2, i + 1)
    else:
        return []
