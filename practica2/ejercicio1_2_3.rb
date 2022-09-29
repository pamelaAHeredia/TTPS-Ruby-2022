#método recibe arreglo como parámetro y lo ordena

def ordenar(arreglo)
    arreglo.sort
end

#2 el método debe recibir todos los nros como parámetros separados
def ordenar_2(*params)
    params.sort
end

#3
def ordenar_3(*params)
    params.flatten.sort
end