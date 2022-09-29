#método. Dado un nro variado de params, imprimir en pantalla la cantidad de car que tiene su 
#su representación como string y la representación que utilizó para contarla. 

def longitud(*params)
    params.flatten.each do |i|
        puts "#{i} --> #{i.to_s.length}"
    end
end