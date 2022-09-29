# contar las ocurrencias del string2 en el string2 sólo cuando se trate de palabras completas

def contar_palabras_completas(string1,string2)
    array = string1.downcase.split
    contador = 0

    array.each do |palabra|
        if palabra.eql? string2
            contador += 1
        end
    end
    contador
end