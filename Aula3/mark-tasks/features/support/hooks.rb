
Before do 
   # visit 'http://marktasks.herokuapp.com/api/reset/teste1@teste.com?clean=full'
    
    @login = LoginPage.new
    @tasks = TarefasPage.new
    @perfil = PerfilPage.new
end

Before('@auth') do
    @login.load
    @login.logar('teste1@teste.com', 'teste1')
end    

After('@logout') do
    @tasks.nav.menu_usuario.click
    @tasks.nav.sair.click
end    
