def notacion_hexadecimal(array)
    hexa = ""
    array.each do |componente|
        hex = componente.to_s(16)
        if componente < 16  
            hexa << "0#{hex}"  
        else   
            hexa << hex
        end
    end
    hexa.send(:upcase)
end

def notacion_entera(array)
    array[0] + array[1] *256 + array[2] *256*256
end

