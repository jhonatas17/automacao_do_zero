#language: pt 

Funcionalidade: Cadastrar tarefas
        Para que eu possa organizar minhas atividades
        Sendo usuário organizado
        Posso cadastrar novas tarefas 

    @nova_task @auth
    Cenário: Nova tarefa 

        Dado que eu tenho uma tarefa com os atributos:
            | titulo | Ler um livro de Ruby          |
            | data   | 30/04/2018                    |
        E eu quero taguear esta tarefa com:
            | tag     |
            | ruby    |
            | livro   |
            | leitura |
            | estudar |    
        Quando faço o cadastro desta tarefa
        Então devo ver este cadastro com status "Em andamento" 


    