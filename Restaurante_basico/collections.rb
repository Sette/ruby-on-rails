

lista = Array.new
lista << "RR-71"
lista << "RR-75"
lista << "FJ-91"

puts lista.size


#Sustituir 
def compra(produto1, produto2, produto3, produtoN)
end

#por 
def compra(*produtos)
    # produtos é uma array
    puts produtos.size
end



config = Hash.new
config["porta"] = 80
config["ssh"] = false
config["nome"] = "Caelum.com.br"

#Invocação de método com parâmetros em um hash

class Conta
    def transfere(argumentos)
        destino = argumentos[:destino]
        data = argumentos[:data]
        valor = argumentos[:valor]

        #executa uma transferência
    end
end

aluno = Conta.new
escola = Conta.new

aluno.transfere destino: escola, valor: 50.0, data: Time.now
