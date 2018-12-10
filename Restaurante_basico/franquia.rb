class Franquia
    def initialize
        @restaurantes = []
    end

    def adiciona(*restaurantes)
        for restaurante in restaurantes
          @restaurantes << restaurante
        end
    end
    def mostra
        @restaurantes.each {|r| puts r.nome}
    end
        
    def relatorio
        @restaurantes.each {|r| yield r}
    end
end

class Restaurante
    attr_accessor :nome

    def fechar_conta(dados)
        puts "Conta fechado no valor de #{dados[:valor]} 
        e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
    end
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano"

restaurante_dois = Restaurante.new
restaurante_dois.nome = "Fogo de Chao"

franquia = Franquia.new
franquia.adiciona restaurante_um , restaurante_dois

franquia.mostra

restaurante_um.fechar_conta valor: 50, nota: 9, comentario: 'Gostei!'

franquia.relatorio {|r| puts "Restaurante cadastrado: #{r.nome}" }


