#language:pt 

Funcionalidade: Meu perfil
    Para que eu possa ter meus dados atualizados
    Sendo um usuário
    Posso completar o meu cadastro

    @perfil @logout
    Esquema do Cenário: Atualizar meu perfil

        Dado que estou autenticado com "teste1@teste.com" e "teste1"   
        E acesso o meu perfil
        Quando completo meu cadastro com "<empresa>" e "<cargo>"
        Então vejo a mensagem "Perfil atualizado com sucesso."

    Exemplos: 
        | empresa   | cargo      |
        | QANinja   | Developer  |
        | Dotz      | QA         |
        | Microsoft | CTO        |
        | Google    | Estagiario |
        | Amazon    | CEO        |


