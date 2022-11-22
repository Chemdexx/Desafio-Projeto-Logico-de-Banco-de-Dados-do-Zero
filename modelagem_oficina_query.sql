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

-- mostra OS de serviço e fusão da tabela Cliente e OS
select * from OS;
select * from cliente join OS
where idOS = IdCliente;

-- mostra tabela de Pagamento
select * from Pagamento;