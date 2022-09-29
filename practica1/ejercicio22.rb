def multiplos_de(array, n)
    es_multip = true
    suma = 0
    (1..n).map { |i|
        array.map do |numero|
            if (i % numero != 0)
                es_multip = false
            end
        end
        if es_multip
            suma += i
        end
        es_multip = true
    }
    suma
end