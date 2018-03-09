
class Pessoa
    attr_accessor :nome, :email, :idade

    def initialize(nome, email, idade)
        @nome = nome
        @email = email
        @idade = idade
    end   

    def mostra_idade
       puts @idade
    end   
end


class Testador < Pessoa
    def testar
       puts "#{@nome}, achou um bug! Enviar um email para #{@email}"
    end
end    

class Desenvolvedor < Pessoa
    def codifica
        puts "#{@nome}, criou um bug! Enviar um email para #{@email}"
    end    
end 
    

t = Testador.new('Jhonatas', 'teste@teste.com', 23)
t.testar
t.mostra_idade

d = Desenvolvedor.new('Desenvolvedor', 'teste2@teste.com', 32)
d.codifica
d.mostra_idade
