def funk4(lista1=[], lista2=[]):

    try:
        if len(lista1) != len(lista2):
            raise RuntimeError("RuntimeError: Liste su različitih dužina")
        else:
        	return "Lista su iste duzine"
    except RuntimeError as e:
        return e
