class Restaurante
    attr_accessor :nome
    @@total = 0
    def initialize(nome)
        puts "criando um novo restaurante: #{nome}"
        @@total ||= 0
        @@total = @@total + 1
        puts "Restaurantes criados: #{@@total}"
        @nome = nome
    end

    def self.relatorio
        puts "Foram criados #{@@total} restaurantes"
    end
end

Restaurante.relatorio
restaurante = Restaurante.new "teste"
Restaurante.relatorio