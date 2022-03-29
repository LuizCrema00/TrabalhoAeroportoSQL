CREATE PROCEDURE BuscaPessoa
  -  @NomePessoa VARCHAR(100)
AS

SET @NomePessoa = '%' + @NomePessoa + '%';

SELECT  Pessoa.Id_Pessoa, Pessoa.Nome
   FROM Pessoa
        

WHERE Pessoa.Nome like @NomePessoa



CREATE PROCEDURE BuscaTipoPassagem
       @BuscaPassagem VARCHAR(100)
AS

SET @BuscaPassagem = '%' + @BuscaPassagem + '%';
SELECT nome, classe
  - FROM Tipo_Passagem

WHERE Classe like @BuscaPassagem



CREATE PROCEDURE BuscaTblEndereco
      @BuscaEndereco VARCHAR(100)

AS
SET @BuscaEndereco = '%' + @BuscaEndereco + '%';
SELECT Id_Endereco, Pais, Estado, Cidade, numero_cep, Id_Pessoa
 - FROM Endereco
WHERE Pais like @BuscaEndereco



CREATE PROCEDURE BuscaFuncCargoTbl
     @BuscaCargo VARCHAR(100)
AS
SET @BuscaCargo = '%' + @BuscaCargo + '%'
SELECT Id_Funcionario, Nome, Cargo
    FROM Funcionario
WHERE Cargo like @BuscaCargo


CREATE PROCEDURE BagagemPassageiro
      @BagagemPass VARCHAR(100)
AS
SET @BagagemPass = '%' + @BagagemPass + '%'
SELECT Nome, Peso, Id_Bagagem, PesoMaximo
    FROM Bagagem
WHERE Nome like @BagagemPass


CREATE PROCEDURE SituacaoReserva
      @Reserva VARCHAR (100)
AS
SET @Reserva = '%' + @Reserva + '%'
SELECT Nome, NumeroAssento, DataReserva, DataVoo
    FROM Situacao
WHERE Nome like @Reserva

--Consultando os Procedimentos
exec SituacaoReserva '%';
exec BuscaPessoa 'luiz';
exec BuscaTipoPassagem 'Economica';
exec BuscaTblEndereco '%';
exec BuscaFuncCargoTbl 'Vendas';
exec BagagemPassageiro 'Luiz';