Dado("que eu acessei a página de cadastro") do                       
    visit '/register'
    expect(page).to have_content 'Criar uma conta Mark7'
end                                                                           
                                                                                
Dado("possuo os seguintes dados:") do |table|                                 
    @cadastro = table.rows_hash   
end                                                                           
                                                                                
Quando("faço o cadastro") do                                           
    fill_in 'register_name', with: @cadastro['Nome'] # => fill_in só funciona para id e names
    fill_in 'register_email', with: @cadastro['Email']
    fill_in 'register_password', with: @cadastro['Senha']
    #find('input[type=password]').set @cadastro['Senha'] # => find Opção para utilizar quando o campo não tiver id e nomes
    find('button[type=submit]').click
end                                                                           
                                                                                
Então("sou redirecionado para o meu painel de tarefas") do                    
    expect(page).to have_content 'Todas as minhas tarefas'
end                                                                           
  
Então("devo ver uma mensagem de alerta {string}") do |mensagem_alerta|
    expect(page).to have_content mensagem_alerta
end