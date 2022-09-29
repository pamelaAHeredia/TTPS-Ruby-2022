#método. recibe, opcionalmente, como parámetro, un objeto de tipo datetime. 
#Calcula la cantidad de minutos que faltan para ese momento. 
#si no recibe params, calcula el tiempo que falta hasta la medianoche.

def cuanto_falta(tiempo = Time.new(Time.now.year, Time.now.month, Time.now.day, 0,0,0) + (60*60*24))
    ahora = Time.now.to_i / 60
    return "Faltan #{(tiempo.to_i) / 60 - ahora} mins."
end

puts cuanto_falta(Time.new(2022,9,29,12,59,48)) 
puts cuanto_falta