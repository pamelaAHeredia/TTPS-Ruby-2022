#funcion que encuetre la suma de todos los nros naturales múltiplos
#3 y 5, que sean menores que un nro tope recibido como parámetro. 

#método find_all : (1..10).find_all {|i| i % 3 == 0} => [3,6,9]
#método select : (1..10).select {|i| i % 3 == 0} => [3,6,9]
#(1..100).select {|i| (i % 3).zero? && (i % 5 ).zero?}

def multiplos_de_3_y_5(tope)
    (1..tope).select {|i| (i % 3 + i % 5).zero?}.sum
end

