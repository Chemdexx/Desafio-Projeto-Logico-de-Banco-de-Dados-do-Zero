-- INSERÇÃO DE DADOS

use oficina;

-- Cliente (IdCliente, Nome, CPF, Endereço, Telefone)
insert into Cliente (Nome, CPF, Endereço, Telefone) values
	('Carlos Eduardo Pereira', '24978963766', 'Rua dos Sete 843, Jd Vil, Aracaju', '984635978'),
    ('Mussolini Bens de Mastro', '94658732187', 'Travessa Casalbuonno S/N, Vila Peres, Rodonópolis', '986471635'),
    ('Raquel Moralez Azevedo', '45638979568', 'Av. Interlagos 2225, Jd Marajoara, São Paulo', '978496589'),
    ('João Cerilo Alexandre Filho', '79485627941', 'Rua do PCC 456, Pedreira. São Paulo', '945687157'),
    ('Mario Alberto Amaral', '96489723468', 'Av. Águas Espreiadas 79, Bosque Lindo, Manaus', '965237948'),
    ('Lindberg Faria Tio', '78965438971', 'Rua Beija-Flor 768, Cidade Ademar, Fortaleza', '965389471');
    
-- Veiculo (IdVeiculo, IdVeiculo_cliente, Marca, Modelo, Ano, Placa)
insert into Veiculo (IdVeiculo_cliente, Marca, Modelo, Ano, Placa) values
	(1, 'FORD', 'Fiesta', '2013', 'FHG4567'),
    (2, 'Chevrolet', 'Onix', '2016-2017', 'LFD1679'),
    (3, 'Chery', 'Tiggo', '2020', 'KL45J98'),
    (4, 'Mitsubishi', 'Outlander', '2017', 'POD9874'),
    (5, 'Fiat', 'Argo', '2015', 'ELR6325'),
    (6, 'Jeep', 'Commander', '2022', 'CDP3659');
    