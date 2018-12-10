class IdadeInsuficienteException < Exception
end

def verifica_idade(idade)
    unless idade > 18
      raise ArgumentError,
      "Você precisa ser maior de idade para jogar jogos violentos." 
    end
  end

begin
    verifica_idade(20)
rescue IdadeInsuficienteException => e
    puts "Foi lançada a exception: #{e}"
end

def pesquisa_banco(nome)
    if nome.size < 10
        throw :nome_invalido, "Nome invalido, digite novamente"
    end
    "cliente #{nome}"
end

def executa_pesquisa(nome)
    catch :nome_invalido do
        cliente = pesquisa_banco(nome)
        cliente
    end
end

puts executa_pesquisa("ana")