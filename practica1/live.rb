#Consigna: implementar un nuevo método que reciba un argumento y retorne un valor booleano indicando si la cadena recibida es pentavocálica.
#El chequeo no deber ser sensible a mayúsculas y minúsculas. 
#El chiste es no usar los iteradores clásicos, si no los que provee ruby. 

#-------- con IRB -----------

#irb es un intérprete interactivo. En resumen, lo que hace es leer, evaluar y presentar la salida. 

# pablo@kali:~/Escritorio/Ruby/misPracticas$ irb
# irb(main):001:0> a = 1
# => 1
# irb(main):002:0> puts a 
# 1
# => nil
# irb(main):003:1* def metodo
# irb(main):004:1*   puts "hola"
# irb(main):005:0> end
# => :metodo
# irb(main):006:0> metodo
# hola
# => nil
# irb(main):007:0> 

#------ Definiendo en este archivo --------

# def metodo 
#     puts "hola desde el archivo"
# end

#para que ese método se ejecute, debo llamarlo
# metodo

#si no lo quiero llamar en el archivo,puedo hacerlo con irb

# pablo@kali:~/Escritorio/Ruby/misPracticas/practica1$ irb 
# irb(main):002:0> require "./live"
# hola desde el archivo
# => true
# irb(main):003:0> metodo
# hola desde el archivo
# => nil
# irb(main):004:0> 

def es_penta?(cadena) 
    vocales =['a','e','i','o','u']
    contador = 0
    vocales.each do |vocal|
        if cadena.include?(vocal)
            contador += 1
        end
    end
    contador == 5 #valor de retorno
end

# una manera de ejecutarlo: 
# $ irb -r./live.rb
# irb(main):001:0> es_penta?('test') 
# => false
# irb(main):002:0> es_penta?('murcielago') 
# => true
# irb(main):003:0> 

test_cases = [
    'aeiou', 'AEIOU', 'AeIoU','Taller de tecnologìas de prod de software', 'murciélago', 'a', 'e','i','o','u', 
    'otro :('
]

test_cases.each do |test_case|
    puts "#{test_case} =>  #{es_penta?(test_case)}"
end

# salida: 
# ruby live.rb
# aeiou =>  true
# AEIOU =>  false
# AeIoU =>  false
# Taller de tecnologìas de prod de software =>  false
# murciélago =>  false
# a =>  false
# e =>  false
# i =>  false
# o =>  false
# u =>  false
# otro :( =>  false