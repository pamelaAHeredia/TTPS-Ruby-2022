#dado un arreglo de strings, retorna un arreglo con las longitudes de los mismos

def longitud(vector)
    vector.map do |strings|
        strings.send(:length)
    end
    
end