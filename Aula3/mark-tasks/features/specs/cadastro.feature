#language:pt

Funcionalidade: Cadastro
    Sendo um usuário que precisa controlar minhas atividades
    Posso me cadastrar com meus dados pessoais
    Para que possa ter um controle e gerenciamento dessas atividades

Contexto: Cadastro
    Dado que eu acessei a página de cadastro

@cadastro
Cenário: Cadastro simples

    E possuo os seguintes dados:
        | Nome  | Teste 1          |
        | Email | teste1@teste.com |
        | Senha | teste1           |
    Quando faço o cadastro
    Então sou redirecionado para o meu painel de tarefas

@cadastro_exp
Esquema do Cenário: Tentativa de cadastro
   
    E possuo os seguintes dados:
        | Nome  | <nome>  |
        | Email | <email> |
        | Senha | <senha> |
    Quando faço o cadastro
    Então devo ver uma mensagem de alerta "<alerta>" 
 
    Exemplos:
        | nome    | email            | senha    | alerta                                       | 
        | Teste 1 |                  | teste1   | Email é obrigatório.                         |
        | Teste 1 | teste1@teste.com |          | Informe uma senha.                           |
        | Teste 1 | teste1@teste.com | teste    | Sua senha deve ter pelo menos 6 caracteres.  |
        | Teste 1 | teste1@teste.com | test     | Sua senha deve ter pelo menos 6 caracteres.  |
        | Teste 1 | teste1@teste.com | tes      | Sua senha deve ter pelo menos 6 caracteres.  |
        | Teste 1 | teste1@teste.com | te       | Sua senha deve ter pelo menos 6 caracteres.  |
        | Teste 1 | teste1@teste.com | t        | Sua senha deve ter pelo menos 6 caracteres.  |
