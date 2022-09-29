#funcion busca los numeros naturales múltiplos de N nros recibidos como param. 

def multiplos(arreglo, tope)

    (1..tope).select do |i|
        #1
        arreglo.inject(true) { |cond, elem| cond = cond and (i % elem).zero? }#inicializo el inject con el valor totalizador como verdadero
    
        #3
        arreglo.all? { |factor| (i % factor).zero?} 
    end.sum

     #2
    arreglo.map { |div| (1..max).select { |i| (i % div).zero? } }.inject(&:&)
end

