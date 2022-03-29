/*Trigger Atualizar Pessoas*/

CREATE TRIGGER tr_Atualização
ON dbo.Pessoa
FOR UPDATE
AS
   INSERT INTO dbo.Hist_Pessoas (Id_Pessoa, Situacao ,Nome, Email, Telefone, DataNascimento, DataAtualização)
   SELECT Id_Pessoa, 'UPDATE' , Nome, Email, Telefone, DataNascimento, GETDATE() FROM deleted;

   SELECT * FROM dbo.Pessoa;
   SELECT * FROM dbo.Hist_Pessoas;


/*Trigger Remover Pessoas*/
   CREATE TRIGGER tr_Remove
ON dbo.Pessoa
AFTER DELETE
AS
   INSERT INTO dbo.Hist_Pessoas (Id_Pessoa, Situacao ,Nome, Email, Telefone, DataNascimento, DataAtualização)
   SELECT Id_Pessoa, 'DELETE' , Nome, Email, Telefone, DataNascimento, GETDATE() FROM deleted;


/*Trigger INSERIR Pessoas*/
CREATE TRIGGER tr_Inserir
ON dbo.Pessoa
FOR INSERT
AS
BEGIN

   DECLARE 
       @IdPessoa int, @Situacao varchar(100) ,@Nome varchar(100), @email varchar(100), @telefone int, @DataNascimento DATE, @DataAtualização DATE;

   SELECT 
       @IdPessoa = Id_Pessoa, @Situacao = 'INSERIDO' ,@Nome = Nome, @email = Email, @telefone = Telefone, @DataNascimento = DataNascimento
   FROM 
       INSERTED 
   INSERT INTO dbo.Hist_Pessoas (Id_Pessoa, Situacao, Nome, Email, Telefone, DataNascimento, DataAtualização)
   VALUES (@IdPessoa, @Situacao,  @Nome, @email, @telefone, @DataNascimento, GETDATE());
END

/*Trigger Atualizar Funcionarios*/
CREATE TRIGGER tr_AtualizaçãoFunc
ON dbo.Funcionario
FOR UPDATE
AS
   INSERT INTO dbo.FuncHistorico(Id_Func, Situacao, Nome, Cargo, DataAtualização)
   SELECT Id_Funcionario, 'UPDATE' , Nome, Cargo, GETDATE() FROM deleted;

   SELECT * FROM dbo.Funcionario;
   SELECT * FROM dbo.FuncHistorico;