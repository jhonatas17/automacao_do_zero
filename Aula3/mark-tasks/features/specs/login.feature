#language:pt

Funcionalidade: Login
    Para que somente eu possa ver as minhas tarefas
    Sendo um usuario
    Posso logar no sistema com meus dados de acesso previamente cadastrado
    
    @login @logout
    Cenário: Login do usuário

        Quando faço login com "teste1@teste.com" e "teste1"
        Então sou autenticado com sucesso
        E vejo meu painel de atividades

    @login_exp
    Esquema do Cenario: Tentativa de login 

        Quando faço login com "<email>" e "<senha>"
        Então devo ver a mensagem "<alerta>"

        Exemplos:
            | email             | senha    | alerta                      |      
            | teste1@teste.com  | teste12  | Senha inválida.             |
            | teste10@teste.com | teste10  | Usuário não cadastrado.     |
            | teste1@teste.com  |          | Senha ausente.              |
            |                   | teste1   | Email incorreto ou ausente. |
