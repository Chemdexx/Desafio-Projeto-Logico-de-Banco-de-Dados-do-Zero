show databases;
use oficina;
show tables;

-- mostra tabela Cliente
select * from cliente;

-- mostra tabela Veículo
select * from veiculo;

-- mostrar Veiculo do Cliente em ordem descendente de nome
select Marca, Modelo, Nome from Veiculo, Cliente
where IdVeiculo = IdCliente 
order by nome desc;