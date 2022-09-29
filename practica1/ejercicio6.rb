# Expresar la hora en palabras
# minuto entre: 0 y 10 = en punto
# 11 Y 20 = y cuarto
# 21 y 34 = y media
# 35 y 44 = menos veinticinco con la hora siguiente
# 45 y 55 = menos cuarto 
# 56 y 59 = casi son las

def hora_en_palabras(hora)
    minutes = hora.min
    hour = hora.hour
    
    case hour
    when 2..11 then     
        time = case minutes
            when 0..10  then "Son las #{hora.hour} en punto"
            when 11..20 then "Son las #{hora.hour} y cuarto"
            when 21..34 then "Son las #{hora.hour} y media" 
            when 34..44 then "Son las #{hora.hour + 1} menos veinticinco" 
            when 45..55 then "Son las #{hora.hour + 1} menos cuarto"
            when 56..59 then " Casi son las #{hora.hour + 1}" 
        end 
    when 1 then 
        time = case minutes
        when 0..10  then "Es la #{hora.hour} en punto"
        when 11..20 then "Es la #{hora.hour} y cuarto"
        when 21..34 then "Es la #{hora.hour} y media" 
        when 34..44 then "Son las #{hora.hour + 1} menos veinticinco" 
        when 45..55 then "Son las #{hora.hour + 1} menos cuarto"
        when 56..59 then " Casi son las #{hora.hour + 1}" 
        end 
    when 00 then
        time = case minutes
        when 0..10  then "Son las 12 en punto"
        when 11..20 then "Son las 12 y cuarto"
        when 21..34 then "Son las 12 y media" 
        when 34..44 then "Es la 1 menos veinticinco" 
        when 45..55 then "Es la 1 menos cuarto"
        when 56..59 then " Casi es la 1" 
        end 
    end    
    time
end
