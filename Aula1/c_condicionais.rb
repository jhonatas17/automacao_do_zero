# puts 'Qual o seu nome?'
# nome = gets.chomp

# puts 'Qual a sua idade?'
# idade = gets.to_i

# if idade < 18
#    puts nome + ' não pode tirar CNH'
# else 
#    puts nome + ' pode tirar CNH'
# end

# cnh = (idade < 18) ? false : true 

# if idade < 18
#   cnh = false
# else 
#   cnh = true
# end

# if cnh
#  puts nome + ' pode tirar cnh'
# else
#     puts nome + ' não pode tirar cnh'  
# end    

#puts 'Deseja beber alguma coisa? 1 - Sim, 2 - Não'
#bebida = gets.to_i

#puts 'Qual a sua idade?'
#idade = gets.to_i

#if bebida == 1
#  if idade >= 18
#    puts 'Servindo uma cerveja'
#  elsif idade >= 15
#        puts 'Servindo um suco'
#    else
#        puts 'Servindo leite com toddy'
#    end          
# end

#conta_bloqueada = false

#puts 'Fazendo login' if !conta_bloqueada        


dia_semana = 1

case dia_semana 
 when 1 
    puts 'Domingo' 
 when 2 
    puts 'Segunda - Feira'
 when 3 
    puts 'Terca - feira'
 else
    puts 'Numero não reconhecido'          
end    