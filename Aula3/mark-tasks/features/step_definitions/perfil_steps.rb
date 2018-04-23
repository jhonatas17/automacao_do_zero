Dado('que estou autenticado com {string} e {string}') do |email, senha|
    @login.load
    @login.logar(email, senha)
end
  
Dado("acesso o meu perfil") do
    @tasks.nav.menu_usuario.click
    @tasks.nav.meu_perfil.click
end
  
Quando("completo meu cadastro com {string} e {string}") do |empresa, cargo|
    @perfil.atualiza(empresa, cargo)
end
  
Então("vejo a mensagem {string}") do |mensagem|
    #form_perfil = find('#user-settings-profile-edit-form')
    #expect(page).to have_content mensagem
    expect(@perfil.formulario).to have_content mensagem
end

