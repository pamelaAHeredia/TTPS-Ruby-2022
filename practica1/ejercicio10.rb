#cuál es el valor de retorno?

[:upcase, :downcase, :capitalize, :swapcase].map do |meth| 
    "TTPS Ruby".send(meth) 
end