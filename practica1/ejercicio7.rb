# Función que recibe dos strings y devuelve cuántas veces aparece el segundo en el primero

def contar(string1, string2)
    string1.downcase.scan(string2).length
end

