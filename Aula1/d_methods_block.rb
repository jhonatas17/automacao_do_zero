  def achou_bug(resposta)
    if resposta
      'Informe o desenvolvedor'
    else
      'Podemos ir para producao'      
    end    
  end

  puts 'Qual o resultado do teste? 0 - Sem bugs, 1 - Com bugs'
  bug = gets.to_i    

  bug = (bug == 1) ? true : false

  puts achou_bug(bug) 

 # var # local
 # @var # instancia
 # $var # Global