   # Q2 Faça uma consulta que selecione o nome de todos os funcionários, exceto o mais idoso.
   
   
     select nome from funcionario
     WHERE dtnasc > (
     SELECT min(dtnasc) FROM funcionario
     )
