
#encoding: utf-8

$arr = []

def add
   puts 'Informe um cenario de teste'
   name = gets.chomp
   $arr << name
end

 def list    
   puts 'Listando os casos de teste'
   $arr.each do |item|
    puts item
 end
end

begin 
 puts '#### Teste Link ####'
 puts ' 1 - Adcionar CT '
 puts ' 2 - Listar cenarios '
 puts ' 3 - Sair '
 puts '##################'

 option = gets.to_i

 case option
  when 1
    add()
  when 2
    list()
  else
    puts 'Opcao invalida' 
  end        
end while option != 3