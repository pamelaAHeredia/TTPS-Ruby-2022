#suma de todos los números naturales múltiplos de 3 y 5 menores al recibido

def multiplos_de_3y5(n)
    suma = 0
    (1..n-1).map {|i| 
        if (i % 3 == 0 and i % 5 == 0)
            suma += i
        end
    }
    suma
end