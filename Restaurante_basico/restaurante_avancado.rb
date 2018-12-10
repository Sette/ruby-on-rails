
def qualifica(nota)
    puts "A nota do restaurante foi #{nota}"
end 

def qualifica(nota,msg="Obrigado")
    puts "A nota do restaurante foi #{nota}. #{msg}"
end 

qualifica 10


class Pessoa
    attr_accessor :nome
    def initialize(nome)
        @nome = nome
      puts "Criando nova pessoa"
    end

    def falar
        puts "Sei falar"
    end

    def troca(roupa,lugar="banheiro")
        "trocando de #{roupa} no #{lugar}"
    end
end

p = Pessoa.new("Bruno Sette")
p.falar
p.send(:falar)
p p.class

=begin
class Fixnum
    def +(outro)
      self - outro # fazendo a soma subtrair
    end
end

p 2+1
=end

p.nome =  "Sette"
p.nome

#Exemplo de uso método soma
p 10.+ 6



