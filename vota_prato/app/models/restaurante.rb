class Restaurante < ApplicationRecord
    has_many :qualificacoes
    has_and_belongs_to_many :pratos
    
    has_and_belongs_to_many :pratos
    validates_presence_of :nome, message: "deve ser preenchido"
    validates_presence_of :endereco, message: "deve ser preenchido"
    validates_presence_of :especialidade, message: "deve ser preenchido"

    validates_uniqueness_of :nome, message: "nome já cadastrado"
    validates_uniqueness_of :endereco, message: "endereço já cadastrado"
    validate :primeira_letra_deve_ser_maiuscula

    #Consulta de massa pré configurada para otimizar o sistema
    scope :massas, -> {where(["especialidade = ?", 'massas'])}

    #Com o scope temos um novo método na classe
    #Restaurante.massas

    #Outros exemplos de otimização
    scope :recentes, -> {where(["created_at > ?", 3.months.ago])}
    scope :pelo_nome, -> {order('nome')}

   

    private
    def primeira_letra_deve_ser_maiuscula
        errors.add(:nome,"primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
    end

    
end
