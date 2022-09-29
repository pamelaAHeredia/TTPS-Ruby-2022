#cifrado de mensaje con algoritmo ROT13

def rot_13(mensaje)
    mensaje.tr('a-z', 'nopqrstuvwxyzabcdefghijklm')
end

#rotación de n lugares
def rot(mensaje, n)
    pivot = ('a'.ord + n)
    mensaje.tr('a-z', "#{(pivot -1).chr}-za-#{pivot.chr}") 
end
