
puts /rio/ =~ "são paulo" # nil
puts /paulo/ =~ "são paulo" # 4


restaurante = "teste"
restaurante ||= "Fogo de Chao"
puts restaurante


# Saidas com aspas simples sempre serão strings
resultado = 10 ** 2
puts ('o resultado é: #{resultado}')


p "strings são objetos".upcase
p :um_simbolo.object_id
