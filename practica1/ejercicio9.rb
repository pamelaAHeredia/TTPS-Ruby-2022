# retorna string con los caracteres en orden inverso

def string_reverso(string)
    string.reverse
end

#string sin espacio
def string_sin_espacio(string)
    string.delete " "
end

#caracteres a Ascii
def string_a_arreglo_ascii(string)
    string.codepoints.to_a
end

#reemplazar vocales por números
def string_reemplaza_vocal(string)
    cadena = string
    cadena.each_char do |letra|
        case letra
        when "a" then cadena[letra] = "4"
        when "A" then cadena[letra] = "4"
        when "e" then cadena[letra] = "3"
        when "E" then cadena[letra] = "3"
        when "i" then cadena[letra] = "1"
        when "I" then cadena[letra] = "1"
        when "o" then cadena[letra] = "0"
        when "O" then cadena[letra] = "9"
        when "u" then cadena[letra] = "6"
        when "U" then cadena[letra] = "6"
        end
    end
    cadena
end