CREATE VIEW Exibir_Situacao_Passagem
As Select NumeroAssento, nome, DataVoo, DataReserva, Id_Situacao, Situacao.Id_Passagem As situacao, valor, assento, restricoes, PASSAGEM.Id_Passagem AS PASSAGEM
from Situacao
INNER JOIN PASSAGEM
ON
Situacao.Id_Passagem = PASSAGEM.Id_Passagem

--consultar view
SELECT NumeroAssento, nome, DataVoo, DataReserva, Valor, Assento, Id_Situacao
FROM dbo.Exibir_Situacao_Passagem

CREATE VIEW Exibir_Aviao_VOO
As Select TipoAviao, Aviao.Id_Aviao, CargaMaxima, MaximoAssentos, Aviao.Id_VOO AS Aviao, VOO.Id_VOO, NomeVOO, VOO.Id_Aviao AS VOO
from Aviao
INNER JOIN VOO
ON
Aviao.Id_VOO = VOO.Id_VOO

--consultar view
SELECT TipoAviao, Id_Aviao, Id_VOO, NomeVOO
from dbo.Exibir_Aviao_VOO


CREATE VIEW Exibir_Endereco_Pessoa
As Select Id_Endereco, Pais, Estado, Cidade, numero_cep, Endereco.Id_Pessoa As Endereco, Pessoa.Id_Pessoa, Email, Telefone, DataNascimento As Pessoa
from Endereco
INNER JOIN Pessoa
ON
Endereco.Id_Pessoa = Pessoa.Id_Pessoa 

--consultar view
SELECT Id_Endereco, Pais, Estado, Cidade, numero_cep, Id_Pessoa
from dbo.Exibir_Endereco_Pessoa

