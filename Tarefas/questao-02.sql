   # Q2 Faça uma consulta que selecione o nome de todos os funcionários, exceto o mais idoso.
     
     select nome from funcionario          
     WHERE dtnasc > (                      
     SELECT min(dtnasc) FROM funcionario   
     )

#linha 3    seleciona nome da tabela funcionario
#linha 4    onde compara se dtnasc é maior 
#linha 5    seleciona o menor dtnasc da tabela funcionario
