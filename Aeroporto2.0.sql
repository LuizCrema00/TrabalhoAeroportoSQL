/* Lógico_Aeroporto2.0: */

CREATE TABLE PASSAGEM (
    Valor FLOAT,
    Assento INTEGER,
    Restricoes VARCHAR(100),
    Id_Passagem INTEGER PRIMARY KEY
);

CREATE TABLE Tipo_Passagem (
    Nome VARCHAR(100),
    Classe VARCHAR(100) PRIMARY KEY,
    Id_Passagem INTEGER
);

CREATE TABLE Bagagem (
    Peso FLOAT,
    Nome VARCHAR(100),
    Id_Bagagem INTEGER PRIMARY KEY,
    PesoMaximo FLOAT
);

CREATE TABLE Aviao (
    TipoAviao VARCHAR(100),
    Id_Aviao INTEGER PRIMARY KEY,
    CargaMaxima FLOAT,
    MaximoAssentos INTEGER,
    Id_VOO INTEGER
);

CREATE TABLE VOO (
    Id_VOO INTEGER PRIMARY KEY,
    NomeVOO VARCHAR(100),
    Id_Aviao INTEGER
);

CREATE TABLE TRECHO_VOO (
    NumTrecho INTEGER,
    Id_VOO INTEGER
);

CREATE TABLE Companhia_Aerea (
    Nome VARCHAR(100),
    Id_Companhia INTEGER PRIMARY KEY
);

CREATE TABLE Passageiro (
    Documento INTEGER,
    Id_Passageiro INTEGER PRIMARY KEY,
    Nome VARCHAR(100),
    Id_Pessoa INTEGER
);

CREATE TABLE Funcionario (
    Id_Funcionario INTEGER PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(100)
);

CREATE TABLE Pessoa (
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone INTEGER,
    DataNascimento DATE,
    Id_Pessoa INTEGER PRIMARY KEY
);

CREATE TABLE Aeroporto (
    Checkin VARCHAR(100),
    Id_Aeroporto INTEGER PRIMARY KEY
);

CREATE TABLE Endereco (
    Estado VARCHAR(100),
    numero_cep INTEGER,
    Cidade VARCHAR(100),
    Pais VARCHAR(100),
    Id_Endereco INTEGER PRIMARY KEY,
    Id_Pessoa INTEGER
);

CREATE TABLE Situacao (
    NumeroAssento INTEGER,
    Nome VARCHAR(100),
    DataVoo DATE,
    DataReserva DATE,
    Id_Situacao INTEGER PRIMARY KEY,
    Id_Passagem INTEGER
);

CREATE TABLE Relacao16 (
    fk_PASSAGEM_Id_Passagem INTEGER,
    fk_Tipo_Passagem_Classe VARCHAR(100)
);

CREATE TABLE Compra (
    fk_PASSAGEM_Id_Passagem INTEGER,
    fk_Passageiro_Id_Passageiro INTEGER
);

CREATE TABLE InfoPassagem (
    fk_PASSAGEM_Id_Passagem INTEGER,
    fk_VOO_Id_VOO INTEGER
);

CREATE TABLE Compoem (
    fk_VOO_Id_VOO INTEGER
);

CREATE TABLE Realiza (
    fk_VOO_Id_VOO INTEGER,
    fk_Companhia_Aerea_Id_Companhia INTEGER
);

CREATE TABLE pertence (
    fk_Aviao_Id_Aviao INTEGER,
    fk_Companhia_Aerea_Id_Companhia INTEGER
);

CREATE TABLE Pessoa_Endereco (
    fk_Endereco_Id_Endereco INTEGER
);

CREATE TABLE AeroportoChegada (
    fk_Aeroporto_Id_Aeroporto INTEGER,
    DataChegada DATE,
    Id_Chegada INTEGER PRIMARY KEY
);

CREATE TABLE AeroportoPartida (
    fk_Aeroporto_Id_Aeroporto INTEGER,
    DataPartida DATE,
    Id_Partida INTEGER PRIMARY KEY
);

CREATE TABLE Relacao10_Passageiro_Pessoa_Funcionario (
    fk_Passageiro_Id_Passageiro INTEGER,
    fk_Funcionario_Id_Funcionario INTEGER
);

CREATE TABLE Relacionamento_2 (
    fk_Situacao_Reserva INTEGER,
    fk_PASSAGEM_Id_Passagem INTEGER
);

CREATE TABLE Tem (
    fk_Companhia_Aerea_Id_Companhia INTEGER,
    fk_Funcionario_Id_Funcionario INTEGER
);

CREATE TABLE Aeroporo_Endereco (
    fk_Endereco_Id_Endereco INTEGER,
    fk_Aeroporto_Id_Aeroporto INTEGER
);

CREATE TABLE Passageiro_Bagagem (
    fk_Bagagem_Id_Bagagem INTEGER,
    fk_Passageiro_Id_Passageiro INTEGER
);
 
ALTER TABLE Relacao16 ADD CONSTRAINT FK_Relacao16_1
    FOREIGN KEY (fk_PASSAGEM_Id_Passagem)
    REFERENCES PASSAGEM (Id_Passagem)
    ON DELETE SET NULL;
 
ALTER TABLE Relacao16 ADD CONSTRAINT FK_Relacao16_2
    FOREIGN KEY (fk_Tipo_Passagem_Classe)
    REFERENCES Tipo_Passagem (Classe)
    ON DELETE SET NULL;
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_1
    FOREIGN KEY (fk_PASSAGEM_Id_Passagem)
    REFERENCES PASSAGEM (Id_Passagem)
    ON DELETE SET NULL;
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_2
    FOREIGN KEY (fk_Passageiro_Id_Passageiro)
    REFERENCES Passageiro (Id_Passageiro)
    ON DELETE SET NULL;
 
ALTER TABLE InfoPassagem ADD CONSTRAINT FK_InfoPassagem_1
    FOREIGN KEY (fk_PASSAGEM_Id_Passagem)
    REFERENCES PASSAGEM (Id_Passagem)
    ON DELETE SET NULL;
 
ALTER TABLE InfoPassagem ADD CONSTRAINT FK_InfoPassagem_2
    FOREIGN KEY (fk_VOO_Id_VOO)
    REFERENCES VOO (Id_VOO)
    ON DELETE SET NULL;
 
ALTER TABLE Compoem ADD CONSTRAINT FK_Compoem_1
    FOREIGN KEY (fk_VOO_Id_VOO)
    REFERENCES VOO (Id_VOO)
    ON DELETE SET NULL;
 
ALTER TABLE Realiza ADD CONSTRAINT FK_Realiza_1
    FOREIGN KEY (fk_VOO_Id_VOO)
    REFERENCES VOO (Id_VOO)
    ON DELETE SET NULL;
 
ALTER TABLE Realiza ADD CONSTRAINT FK_Realiza_2
    FOREIGN KEY (fk_Companhia_Aerea_Id_Companhia)
    REFERENCES Companhia_Aerea (Id_Companhia)
    ON DELETE SET NULL;
 
ALTER TABLE pertence ADD CONSTRAINT FK_pertence_1
    FOREIGN KEY (fk_Aviao_Id_Aviao)
    REFERENCES Aviao (Id_Aviao)
    ON DELETE SET NULL;
 
ALTER TABLE pertence ADD CONSTRAINT FK_pertence_2
    FOREIGN KEY (fk_Companhia_Aerea_Id_Companhia)
    REFERENCES Companhia_Aerea (Id_Companhia)
    ON DELETE SET NULL;
 
ALTER TABLE Pessoa_Endereco ADD CONSTRAINT FK_Pessoa_Endereco_1
    FOREIGN KEY (fk_Endereco_Id_Endereco)
    REFERENCES Endereco (Id_Endereco)
    ON DELETE SET NULL;
 
ALTER TABLE AeroportoChegada ADD CONSTRAINT FK_AeroportoChegada_2
    FOREIGN KEY (fk_Aeroporto_Id_Aeroporto)
    REFERENCES Aeroporto (Id_Aeroporto)
    ON DELETE SET NULL;
 
ALTER TABLE AeroportoPartida ADD CONSTRAINT FK_AeroportoPartida_2
    FOREIGN KEY (fk_Aeroporto_Id_Aeroporto)
    REFERENCES Aeroporto (Id_Aeroporto)
    ON DELETE SET NULL;
 
ALTER TABLE Relacao10_Passageiro_Pessoa_Funcionario ADD CONSTRAINT FK_Relacao10_Passageiro_Pessoa_Funcionario_1
    FOREIGN KEY (fk_Passageiro_Id_Passageiro)
    REFERENCES Passageiro (Id_Passageiro)
    ON DELETE NO ACTION;
 
ALTER TABLE Relacao10_Passageiro_Pessoa_Funcionario ADD CONSTRAINT FK_Relacao10_Passageiro_Pessoa_Funcionario_2
    FOREIGN KEY (fk_Funcionario_Id_Funcionario)
    REFERENCES Funcionario (Id_Funcionario)
    ON DELETE NO ACTION;
 
ALTER TABLE Relacionamento_2 ADD CONSTRAINT FK_Relacionamento_2_1
    FOREIGN KEY (fk_Situacao_Reserva)
    REFERENCES Situacao (Id_Situacao)
    ON DELETE SET NULL;
 
ALTER TABLE Relacionamento_2 ADD CONSTRAINT FK_Relacionamento_2_2
    FOREIGN KEY (fk_PASSAGEM_Id_Passagem)
    REFERENCES PASSAGEM (Id_Passagem)
    ON DELETE SET NULL;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_1
    FOREIGN KEY (fk_Companhia_Aerea_Id_Companhia)
    REFERENCES Companhia_Aerea (Id_Companhia)
    ON DELETE SET NULL;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_2
    FOREIGN KEY (fk_Funcionario_Id_Funcionario)
    REFERENCES Funcionario (Id_Funcionario)
    ON DELETE SET NULL;
 
ALTER TABLE Aeroporo_Endereco ADD CONSTRAINT FK_Aeroporo_Endereco_1
    FOREIGN KEY (fk_Endereco_Id_Endereco)
    REFERENCES Endereco (Id_Endereco)
    ON DELETE SET NULL;
 
ALTER TABLE Aeroporo_Endereco ADD CONSTRAINT FK_Aeroporo_Endereco_2
    FOREIGN KEY (fk_Aeroporto_Id_Aeroporto)
    REFERENCES Aeroporto (Id_Aeroporto)
    ON DELETE SET NULL;
 
ALTER TABLE Passageiro_Bagagem ADD CONSTRAINT FK_Passageiro_Bagagem_1
    FOREIGN KEY (fk_Bagagem_Id_Bagagem)
    REFERENCES Bagagem (Id_Bagagem)
    ON DELETE SET NULL;
 
ALTER TABLE Passageiro_Bagagem ADD CONSTRAINT FK_Passageiro_Bagagem_2
    FOREIGN KEY (fk_Passageiro_Id_Passageiro)
    REFERENCES Passageiro (Id_Passageiro)
    ON DELETE SET NULL;