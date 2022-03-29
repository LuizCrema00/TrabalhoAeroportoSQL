--Insercao tabela Reserva
INSERT INTO Situacao (NumeroAssento, Nome, DataVoo, DataReserva, Id_Situacao, Id_Passagem) values (141, 'luiz', '2022/02/01', '2022/02/17',1,1)
INSERT INTO Situacao (NumeroAssento, Nome, DataVoo, DataReserva, Id_Situacao, Id_Passagem) values (87, 'gabriel', '2022/02/01', '2022/01/17',2,2)
INSERT INTO Situacao (NumeroAssento, Nome, DataVoo, DataReserva, Id_Situacao, Id_Passagem) values (41, 'guilherme', '2022/02/01', '2022/01/23',3,3)
INSERT INTO Situacao (NumeroAssento, Nome, DataVoo, DataReserva, Id_Situacao, Id_Passagem) values (14, 'andre', '2022/02/01', '2022/01/26',4,4)
INSERT INTO Situacao (NumeroAssento, Nome, DataVoo, DataReserva, Id_Situacao, Id_Passagem) values (149, 'joao', '2022/02/01', '2022/01/14',5,5)

--Insercao tabela Aviao
INSERT INTO Aviao (TipoAviao, Id_Aviao, CargaMaxima, MaximoAssentos, Id_VOO) values ('comercial', 1, 50000.5, 250,26)
INSERT INTO Aviao (TipoAviao, Id_Aviao, CargaMaxima, MaximoAssentos,Id_VOO) values ('Airbus a330', 2, 50000.5, 250,43)
INSERT INTO Aviao (TipoAviao, Id_Aviao, CargaMaxima, MaximoAssentos,Id_VOO) values ('Airbus A340', 3, 50000.5, 250,55)
INSERT INTO Aviao (TipoAviao, Id_Aviao, CargaMaxima, MaximoAssentos,Id_VOO) values ('Airbus A350', 4, 50000.5, 250,23)
INSERT INTO Aviao (TipoAviao, Id_Aviao, CargaMaxima, MaximoAssentos,Id_VOO) values ('Airbus A380', 5, 50000.5, 250,2)

--Insercao tabela Tipo_Passagem
INSERT INTO Tipo_Passagem (Nome, Classe) values ('Luiz', 'Economica')
INSERT INTO Tipo_Passagem (Nome, Classe) values ('Gabriel', 'Segunda')
INSERT INTO Tipo_Passagem (Nome, Classe) values ('André', 'Terceira')
INSERT INTO Tipo_Passagem (Nome, Classe) values ('Guilherme', 'Primeira')
INSERT INTO Tipo_Passagem (Nome, Classe) values ('Joao', 'Executiva')

--Insercao tabela PASSAGEM
INSERT INTO PASSAGEM (valor, Assento, Restricoes, Id_Passagem) values (219.90, 111, 'nenhuma', 1)
INSERT INTO PASSAGEM (valor, Assento, Restricoes, Id_Passagem) values (219.90, 57, 'nenhuma', 2)
INSERT INTO PASSAGEM (valor, Assento, Restricoes, Id_Passagem) values (219.90, 88, 'nenhuma', 3)
INSERT INTO PASSAGEM (valor, Assento, Restricoes, Id_Passagem) values (219.90, 145, 'nenhuma', 4)
INSERT INTO PASSAGEM (valor, Assento, Restricoes, Id_Passagem) values (219.90, 130, 'nenhuma', 5)

--Insercao tabela Bagagem
INSERT INTO Bagagem (Peso, Nome, Id_Bagagem, PesoMaximo) values (57.5, 'Luiz', 1, 100.00)
INSERT INTO Bagagem (Peso, Nome, Id_Bagagem,PesoMaximo) values (78.2, 'Pedro', 2, 100.00)
INSERT INTO Bagagem (Peso, Nome, Id_Bagagem,PesoMaximo) values (47.4, 'Gabriel', 3, 100.00)
INSERT INTO Bagagem (Peso, Nome, Id_Bagagem,PesoMaximo) values (101.3, 'Andre', 4, 100.00)
INSERT INTO Bagagem (Peso, Nome, Id_Bagagem,PesoMaximo) values (87.6, 'Joao', 5, 100.00)

--Insercao tabela VOO
INSERT INTO VOO (Id_VOO, NomeVOO,Id_Aviao) values (1, 'Airbus A330',1)
INSERT INTO VOO (Id_VOO, NomeVOO,Id_Aviao) values (2, 'Airbus A340',2)
INSERT INTO VOO (Id_VOO, NomeVOO,Id_Aviao) values (3, 'Airbus A350',3)
INSERT INTO VOO (Id_VOO, NomeVOO,Id_Aviao) values (4, 'Airbus A380',4)
INSERT INTO VOO (Id_VOO, NomeVOO,Id_Aviao) values (5, 'Airbus A390',5)

--Insercao tabela Trecho VOO
INSERT INTO TRECHO_VOO (NumTrecho, Id_VOO) values (157, 1)
INSERT INTO TRECHO_VOO (NumTrecho, Id_VOO) values (896, 2)
INSERT INTO TRECHO_VOO (NumTrecho, Id_VOO) values (293, 3)
INSERT INTO TRECHO_VOO (NumTrecho, Id_VOO) values (790, 4)
INSERT INTO TRECHO_VOO (NumTrecho, Id_VOO) values (568, 5)

--Insercao tabela companhia aerea
INSERT INTO Companhia_Aerea (Id_Companhia ,Nome) values (1 ,'varig')
INSERT INTO Companhia_Aerea (Id_Companhia ,Nome) values (2 ,'TAM')
INSERT INTO Companhia_Aerea (Id_Companhia ,Nome) values (3 ,'GOL')
INSERT INTO Companhia_Aerea (Id_Companhia ,Nome) values (4 ,'Turkish Airlines')
INSERT INTO Companhia_Aerea (Id_Companhia ,Nome) values (5 ,'British Airlines')

--Insercao tabela Passageiro
INSERT INTO Passageiro (Documento, Id_Passageiro, Nome, Id_Pessoa) values ('08979868483920', 1, 'Gabriel', 5)
INSERT INTO Passageiro (Documento, Id_Passageiro, Nome, Id_Pessoa) values ('19283716372828', 2, 'Joao', 4)
INSERT INTO Passageiro (Documento, Id_Passageiro, Nome, Id_Pessoa) values ('86875885838483', 3, 'Andre', 2)
INSERT INTO Passageiro (Documento, Id_Passageiro, Nome, Id_Pessoa) values ('01929338293029', 4, 'Guilherme', 3)
INSERT INTO Passageiro (Documento, Id_Passageiro, Nome, Id_Pessoa) values ('07283942892039', 5, 'luiz', 1)

--Insercao tabela pessoa
INSERT INTO Pessoa (Id_Pessoa, Nome, Email, Telefone, DataNascimento) values (1,'luiz', 'luiz@gmail.com', 95848921, '2000/04/08') 
INSERT INTO Pessoa (Id_Pessoa, Nome, Email, Telefone, DataNascimento) values (2,'Andre', 'andre@gmail.com', 9785849, '1990/01/16') 
INSERT INTO Pessoa (Id_Pessoa, Nome, Email, Telefone, DataNascimento) values (3,'Guilherme', 'guilherme@gmail.com', 8721821, '1956/04/13') 
INSERT INTO Pessoa (Id_Pessoa, Nome, Email, Telefone, DataNascimento) values (4,'Joao', 'joao@gmail.com', 89982189, '2003/01/07') 
INSERT INTO Pessoa (Id_Pessoa, Nome, Email, Telefone, DataNascimento) values (5,'Gabriel', 'gabriel@gmail.com', 89982189, '1999/09/09') 

--Insercao tabela Funcionario
INSERT INTO Funcionario (Id_Funcionario, Nome, Cargo) values (1, 'Romulo','Vendas')
INSERT INTO Funcionario (Id_Funcionario, Nome, Cargo) values (2,'João','Vendas')
INSERT INTO Funcionario (Id_Funcionario, Nome, Cargo) values (3,'Pedro','Limpeza')
INSERT INTO Funcionario (Id_Funcionario, Nome, Cargo) values (4,'Gustavo','TI')
INSERT INTO Funcionario (Id_Funcionario, Nome, Cargo) values (5,'Abedi', 'Gerente')

--Insercao tabela Endereco
INSERT INTO Endereco (Id_Endereco, Pais, Estado, Cidade, numero_cep, Id_Pessoa) values (1, 'Brasil', 'Paraná', 'Ponta Grossa', 3948394, 1)
INSERT INTO Endereco (Id_Endereco, Pais, Estado, Cidade, numero_cep, Id_Pessoa) values (2, 'Brasil', 'Paraná', 'Ponta Grossa', 654645, 2)
INSERT INTO Endereco (Id_Endereco, Pais, Estado, Cidade, numero_cep, Id_Pessoa) values (3, 'Argentina','Buenos Aires', 'Buenos Aires', 3456, 3)
INSERT INTO Endereco (Id_Endereco, Pais, Estado, Cidade, numero_cep, Id_Pessoa) values (4,'Inglaterra', 'Grande Londres', 'Londres', 2356, 4)
INSERT INTO Endereco (Id_Endereco, Pais, Estado, Cidade, numero_cep, Id_Pessoa) values (5, 'Italia', 'Lazio', 'Roma', 45345, 5)

--Insercao tabela Aeroporto
INSERT INTO Aeroporto (Checkin, Id_Aeroporto) values ('presente', 1)
INSERT INTO Aeroporto (Checkin, Id_Aeroporto) values ('presente', 2)
INSERT INTO Aeroporto (Checkin, Id_Aeroporto) values ('presente', 3)
INSERT INTO Aeroporto (Checkin, Id_Aeroporto) values ('presente', 4)
INSERT INTO Aeroporto (Checkin, Id_Aeroporto) values ('presente', 5)

--Insercao Tabela Aeroporto Chegada
INSERT INTO AeroportoChegada (Id_Chegada, fk_Aeroporto_Id_Aeroporto, DataChegada) values (1, 1,'16/03/22')
INSERT INTO AeroportoChegada (Id_Chegada, fk_Aeroporto_Id_Aeroporto, DataChegada) values (2, 3,'17/03/22')
INSERT INTO AeroportoChegada (Id_Chegada, fk_Aeroporto_Id_Aeroporto, DataChegada) values (3, 2,'18/03/22')
INSERT INTO AeroportoChegada (Id_Chegada, fk_Aeroporto_Id_Aeroporto, DataChegada) values (4, 4,'19/03/22')
INSERT INTO AeroportoChegada (Id_Chegada, fk_Aeroporto_Id_Aeroporto, DataChegada) values (5, 2,'20/03/22')

--Insercao Tabela Aeroporto Partida
INSERT INTO AeroportoPartida (Id_Partida, fk_Aeroporto_Id_Aeroporto, DataPartida) values (1, 1, '17/03/22')
INSERT INTO AeroportoPartida (Id_Partida, fk_Aeroporto_Id_Aeroporto, DataPartida) values (2, 2, '18/03/22')
INSERT INTO AeroportoPartida (Id_Partida, fk_Aeroporto_Id_Aeroporto, DataPartida) values (3, 3, '19/03/22')
INSERT INTO AeroportoPartida (Id_Partida, fk_Aeroporto_Id_Aeroporto, DataPartida) values (4, 5, '20/03/22')
INSERT INTO AeroportoPartida (Id_Partida, fk_Aeroporto_Id_Aeroporto, DataPartida) values (5, 4, '21/03/22')

--Remocoes

DELETE FROM AeroportoPartida
DELETE FROM AeroportoChegada
DELETE FROM Pessoa
DELETE FROM Aeroporto
DELETE FROM Companhia_Aerea
DELETE FROM TRECHO_VOO 
DELETE FROM Aviao
DELETE FROM Bagagem
DELETE FROM Tipo_Passagem
DELETE FROM PASSAGEM
DELETE FROM Situacao
DELETE FROM VOO
DELETE FROM Endereco


--Atualizacoes

UPDATE Pessoa SET Nome = 'Pedro' where Nome = 'Andre'
UPDATE Pessoa SET Nome = 'Joao' where Nome = 'Julio'
UPDATE Bagagem SET Peso = 51.4 where Id_Bagagem = 1
UPDATE Bagagem SET Peso = 97.3 where Id_Bagagem = 4
UPDATE Bagagem SET Nome = 'Gabriel' where Id_Bagagem = 4
UPDATE Bagagem SET Nome = 'Andre' where Id_Bagagem = 2
UPDATE Bagagem SET Nome = 'Joao' where Id_Bagagem = 3
UPDATE Bagagem SET Nome = 'Guilherme' where Id_Bagagem = 5