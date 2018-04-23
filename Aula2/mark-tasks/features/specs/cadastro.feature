#language:pt

Funcionalidade: Cadastro
    Sendo um usuário que possui muitas tarefas
    Posso fazer meu cadastro no sistema
    Para poder gerenciar as minhas tarefas

Cenário: Cadastro simplificado

    Dado que eu acessei a página de cadastro
    E possuo os seguintes dados:
        | Nome  | Teste 1                      |
        | Email | teste1@teste.com             |
        | Senha | teste1                       |
    Quando faço o meu cadastro
    Então sou redirecionado para o meu painel de tarefas

Cenário: Email não informado

    Dado que eu acessei a página de cadastro
    E possuo os seguintes dados:
        | Nome  | Teste 1                      |
        | Email |                              |
        | Senha | teste1                       |
    Quando faço o meu cadastro
    Então devo ver uma mensagem de alerta "Email é obrigatório." 

Cenário: Senha não informada  
 
    Dado que eu acessei a página de cadastro
    E possuo os seguintes dados:
        | Nome  | Teste 1                      |
        | Email | teste1@teste.com             |
        | Senha |                              |
    Quando faço o meu cadastro
    Então devo ver uma mensagem de alerta "Informe uma senha." 

Cenário: Mínimo de caracteres para senha     

    Dado que eu acessei a página de cadastro
    E possuo os seguintes dados:
        | Nome  | Teste 1                      |
        | Email | teste1@teste.com             |
        | Senha | teste                        |
    Quando faço o meu cadastro
    Então devo ver uma mensagem de alerta "Sua senha deve ter pelo menos 6 caracteres." 