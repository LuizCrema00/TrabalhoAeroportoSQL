--1-Consultar tabela Situacao
Select * from Situacao

--2- Consultar apenas coluna Nome da Tabela Passageiro
Select nome FROM Passageiro

--3-Consultar Bagagem com Peso menor 85.5 kg
Select peso, Nome, Id_Bagagem, PesoMaximo from Bagagem where Peso < 85.5

--4-Consultar Assentos menores que Poltrona 150
Select valor, Assento, Restricoes, Id_Passagem from PASSAGEM where Assento < 150

--5-Consultar Situacao com voo marcado antes do mes 05 de 2022
Select NumeroAssento, Nome, DataVoo, DataReserva, Id_Situacao, Id_Passagem from Situacao where DataVoo < '2022/05/1'

--6- Consultar tabelas VOO e TRECHO_VOO 
Select * FROM VOO INNER JOIN TRECHO_VOO ON VOO.Id_VOO = TRECHO_VOO.Id_VOO

--7 Selecionar Brasileiros na tabela Endereco
Select estado, numero_cep, cidade, pais, Id_Endereco, Id_Pessoa from Endereco where Pais = 'Brasil'

--8 Consultar pessoas presentes na tabela coluna checkin
Select checkin, Id_Aeroporto from Aeroporto where Checkin = 'presente'

--9 Consultar tabela Pessoa e tabela passageiros
Select * from Pessoa INNER JOIN Passageiro ON Pessoa.Id_Pessoa = Passageiro.Id_Pessoa

-- 10 Consultar passageiros que pegaram Classe 'Economica'
Select Nome, Classe from Tipo_Passagem where Classe = 'Economica'




