#función recibe un hash y retorna un string con los pares ordenados de cada clave/valor, formateados en una lista ordenada de texto plano

def listar(hash)
    string = ""
    i = 0
    hash.each do |key, value|
        i += 1
        string << " #{i}. #{key}: #{value}\n "
    end
    string
end

#ejercicio 14

def listar_mejorada(hash, separador = ": ")
    string = ""
    i = 0
    hash.each do |key, value|
        i += 1
        string << "#{i}. #{key}#{separador}#{value}\n"
    end
    string
end