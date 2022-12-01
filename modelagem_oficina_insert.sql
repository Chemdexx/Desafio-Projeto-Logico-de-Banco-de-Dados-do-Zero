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
    
-- OS (IdOS, IdOSVeiculo, Descrição, DataEmissão, StatusOS, DataEntrega)
insert into OS (IdOSVeiculo, Descrição, DataEmissão, StatusOS, DataEntrega) values
	(1, 'Amortecedor quebrado', '2016-11-12 15:00:00', 'Andamento', '2016-11-25'),
    (2, 'Escapamento furado', '2016-11-16 18:00:00', 'Finalizado', '2016-11-18'),
    (3, 'Troca de Bateria', '2016-11-14 12:30:00', 'Entregue', '2016-11-14'),
    (4, 'Radiador não funciona', '2016-11-20 11:00:00', 'Andamento', '2016-12-04'),
    (5, 'Troca de Omocinética', '2016-12-07 9:00:00', 'Finalizado', '2016-11-09'),
    (6, 'Balanceamento/Alinhamento', '2016-11-27 16:45:00', 'Entregue', '2016-11-27');
    
-- Pagamento (IdPagamento, IdOSPagamento, FormaPagamento, limitAvailable)
insert into Pagamento (IdOSPagamento, FormaPagamento, limitAvailable) values
	(1, 'PIX', true),
    (2, default, false),
    (3, 'Cartão de Débito', false),
    (4, 'Cartão de Crédito', true),
    (5, 'Dinheiro', false),
    (6, null, true);
    
-- Preço (IdPreco, IdOSPreco, MãodeObra, Pecas)
insert into Preço (IdOSPreco, MãodeObra, Pecas) values
	(1, 250, 'Amortecedor'),
    (2, 130, 'Escapamento'),
    (3, 70, 'Bateria'),
    (4, 100, 'Mangueira'),
    (5, 236.95, 'Junta Omocinética'),
    (6, 44, null);
    
-- Serviços (IdServico, IdOsServico, Conserto, Revisão)
insert into Serviços (IdOsServico, Conserto, Revisão) values
	(1, 'Troca de Amortecedor', null),
    (2, 'Troca de Escapamento', null),
    (3, 'Troca de Bateria', null),
    (4, 'Substituição de Mangueira', null),
    (5, 'Instalação Junta Omocinética', null),
    (6, null, 'Ajuste e Revisão');
    
-- Mecânicos (IdMecanico, IdOSMecanico, NomeMecanico, CPF, Endereço, Especialidade)
insert into Mecanicos (IdOSMecanico, NomeMecanico, CPF, Endereço, Especialidade) values
		(1, 'Adilson', '465387962', 'Rua Lugubre', 'Soldador'),
        (2, 'Antonio', '346859768', 'Av Whitaker', 'Motor'),
        (3, 'Glauco', '467895321', 'Rua José Neves', 'Suspensão'),
        (4, 'Portnoy', '852365974', 'Av. Interlagos', 'Transmissão'),
        (5, 'José Inácio', '947863235', 'Rua Dobradura', 'Carenagem'),
        (6, 'Cesar Augusto', '756489612', 'Rua dos Pinheiros', 'Elétrica');
	
-- Equipe Mecânicos (IdEquipeOS, IdEquipeMecânicos, Integrantes)
insert into EquipeMecanicos (IdEquipeOS, IdEquipeMecanicos, Integrantes) values
		(1, 3, 'Glauco, ajudante'),
        (2, 1, 'Adilson, José Inácio'),
        (3, 6, 'Cesar Augusto'),
        (4, 5, 'José Inácio, ajudante'),
        (5, 4, 'Portnoy, Antonio'),
        (6, 2, 'Antonio');
    

    