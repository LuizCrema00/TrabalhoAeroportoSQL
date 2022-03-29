-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 29-Mar-2022 às 06:42
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetoaeroporto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aeroporto`
--

DROP TABLE IF EXISTS `aeroporto`;
CREATE TABLE IF NOT EXISTS `aeroporto` (
  `Checkin` varchar(100) DEFAULT NULL,
  `Id_Aeroporto` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Pessoa` int(11) NOT NULL,
  PRIMARY KEY (`Id_Aeroporto`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aeroporto`
--

INSERT INTO `aeroporto` (`Checkin`, `Id_Aeroporto`, `Id_Pessoa`) VALUES
(NULL, 1, 2),
(NULL, 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aeroportochegada`
--

DROP TABLE IF EXISTS `aeroportochegada`;
CREATE TABLE IF NOT EXISTS `aeroportochegada` (
  `fk_Aeroporto_Id_Aeroporto` int(11) DEFAULT NULL,
  `DataChegada` datetime DEFAULT NULL,
  `Id_Chegada` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_Chegada`),
  KEY `FK_AeroportoChegada_2` (`fk_Aeroporto_Id_Aeroporto`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aeroportochegada`
--

INSERT INTO `aeroportochegada` (`fk_Aeroporto_Id_Aeroporto`, `DataChegada`, `Id_Chegada`) VALUES
(2, '2022-03-29 00:20:00', 14),
(2, '2022-03-29 00:20:00', 15),
(2, '2022-03-29 00:20:00', 16),
(2, '2022-03-30 09:30:00', 17),
(2, '2022-03-30 10:30:00', 18),
(2, '2022-03-29 09:40:00', 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aeroportopartida`
--

DROP TABLE IF EXISTS `aeroportopartida`;
CREATE TABLE IF NOT EXISTS `aeroportopartida` (
  `fk_Aeroporto_Id_Aeroporto` int(11) DEFAULT NULL,
  `DataPartida` datetime DEFAULT NULL,
  `Id_Partida` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_Partida`),
  KEY `FK_AeroportoPartida_2` (`fk_Aeroporto_Id_Aeroporto`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aeroportopartida`
--

INSERT INTO `aeroportopartida` (`fk_Aeroporto_Id_Aeroporto`, `DataPartida`, `Id_Partida`) VALUES
(1, '2022-03-29 06:30:00', 19),
(1, '2022-03-30 06:30:00', 18),
(1, '2022-03-30 06:20:00', 17),
(1, '2022-03-28 23:20:00', 16),
(1, '2022-03-28 23:20:00', 15),
(1, '2022-03-28 23:20:00', 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aviao`
--

DROP TABLE IF EXISTS `aviao`;
CREATE TABLE IF NOT EXISTS `aviao` (
  `TipoAviao` varchar(100) DEFAULT NULL,
  `Id_Aviao` int(11) NOT NULL AUTO_INCREMENT,
  `CargaMaxima` float DEFAULT NULL,
  `MaximoAssentos` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Aviao`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aviao`
--

INSERT INTO `aviao` (`TipoAviao`, `Id_Aviao`, `CargaMaxima`, `MaximoAssentos`) VALUES
('Airbus A330', 1, 10000.5, 350);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bagagem`
--

DROP TABLE IF EXISTS `bagagem`;
CREATE TABLE IF NOT EXISTS `bagagem` (
  `Peso` float DEFAULT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Id_Bagagem` int(11) NOT NULL,
  `PesoMaximo` float DEFAULT NULL,
  PRIMARY KEY (`Id_Bagagem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `companhia_aerea`
--

DROP TABLE IF EXISTS `companhia_aerea`;
CREATE TABLE IF NOT EXISTS `companhia_aerea` (
  `Nome` varchar(100) DEFAULT NULL,
  `Id_Companhia` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_Companhia`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `companhia_aerea`
--

INSERT INTO `companhia_aerea` (`Nome`, `Id_Companhia`) VALUES
('TAM', 1),
('GOL', 2),
('Turkish Airlines', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `compoem`
--

DROP TABLE IF EXISTS `compoem`;
CREATE TABLE IF NOT EXISTS `compoem` (
  `fk_VOO_Id_VOO` int(11) DEFAULT NULL,
  KEY `FK_Compoem_1` (`fk_VOO_Id_VOO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

DROP TABLE IF EXISTS `compra`;
CREATE TABLE IF NOT EXISTS `compra` (
  `fk_PASSAGEM_Id_Passagem` int(11) DEFAULT NULL,
  `fk_Passageiro_Id_Passageiro` int(11) DEFAULT NULL,
  KEY `FK_Compra_1` (`fk_PASSAGEM_Id_Passagem`),
  KEY `FK_Compra_2` (`fk_Passageiro_Id_Passageiro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE IF NOT EXISTS `endereco` (
  `Estado` varchar(100) DEFAULT NULL,
  `numero_cep` int(11) DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `Pais` varchar(100) DEFAULT NULL,
  `Id_Endereco` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Pessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Endereco`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`Estado`, `numero_cep`, `Cidade`, `Pais`, `Id_Endereco`, `Id_Pessoa`) VALUES
('PR', 84020040, 'Ponta Grossa', 'Brasil', 1, 1),
('PR', 83010900, 'SÃ£o JosÃ© dos Pinhais', 'Brasil', 2, 2),
('PR', 84020040, 'Ponta Grossa', 'Brasil', 3, 0),
('PR', 84020040, 'Ponta Grossa', 'Brasil', 4, 4),
('PR', 84020040, 'Ponta Grossa', 'Brasil', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `Id_Funcionario` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Cargo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_Funcionario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`Id_Funcionario`, `Nome`, `Cargo`) VALUES
(4, 'Gustavo', 'TI'),
(5, 'Abedi', 'Gerente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `infopassagem`
--

DROP TABLE IF EXISTS `infopassagem`;
CREATE TABLE IF NOT EXISTS `infopassagem` (
  `fk_PASSAGEM_Id_Passagem` int(11) DEFAULT NULL,
  `fk_VOO_Id_VOO` int(11) DEFAULT NULL,
  KEY `FK_InfoPassagem_1` (`fk_PASSAGEM_Id_Passagem`),
  KEY `FK_InfoPassagem_2` (`fk_VOO_Id_VOO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `infopassagem`
--

INSERT INTO `infopassagem` (`fk_PASSAGEM_Id_Passagem`, `fk_VOO_Id_VOO`) VALUES
(NULL, 3),
(3, 3),
(4, 4),
(5, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `passageiro`
--

DROP TABLE IF EXISTS `passageiro`;
CREATE TABLE IF NOT EXISTS `passageiro` (
  `Documento` int(11) DEFAULT NULL,
  `Id_Passageiro` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Id_Pessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Passageiro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `passageiro_bagagem`
--

DROP TABLE IF EXISTS `passageiro_bagagem`;
CREATE TABLE IF NOT EXISTS `passageiro_bagagem` (
  `fk_Bagagem_Id_Bagagem` int(11) DEFAULT NULL,
  `fk_Passageiro_Id_Passageiro` int(11) DEFAULT NULL,
  KEY `FK_Passageiro_Bagagem_1` (`fk_Bagagem_Id_Bagagem`),
  KEY `FK_Passageiro_Bagagem_2` (`fk_Passageiro_Id_Passageiro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `passagem`
--

DROP TABLE IF EXISTS `passagem`;
CREATE TABLE IF NOT EXISTS `passagem` (
  `Valor` float DEFAULT NULL,
  `Assento` int(11) DEFAULT NULL,
  `Restricoes` varchar(100) DEFAULT NULL,
  `Id_Passagem` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_Passagem`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `passagem`
--

INSERT INTO `passagem` (`Valor`, `Assento`, `Restricoes`, `Id_Passagem`) VALUES
(219.9, 111, 'nenhuma', 1),
(219.9, 111, 'nenhuma', 2),
(219.9, 111, 'nenhuma', 3),
(219.9, 111, 'nenhuma', 4),
(219.9, 111, 'nenhuma', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pertence`
--

DROP TABLE IF EXISTS `pertence`;
CREATE TABLE IF NOT EXISTS `pertence` (
  `fk_Aviao_Id_Aviao` int(11) DEFAULT NULL,
  `fk_Companhia_Aerea_Id_Companhia` int(11) DEFAULT NULL,
  KEY `FK_pertence_1` (`fk_Aviao_Id_Aviao`),
  KEY `FK_pertence_2` (`fk_Companhia_Aerea_Id_Companhia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `Nome` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `Id_Pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Aeroporto` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Pessoa`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`Nome`, `Email`, `Telefone`, `DataNascimento`, `Id_Pessoa`, `Id_Aeroporto`) VALUES
('Andre Munhoz', 'dedemunhoz04@gmail.com', '42999862732', '1999-09-04', 1, 0),
('Aeroporto Internacional Afonso Pena', 'aeroportoafonsopena@hotmail.com', '42999862732', '0001-01-01', 2, 1),
('Aeroporto de SÃ£o Paulo/Congonhas', 'aeroportocongonhas@hotmail.com', '(11) 5090-9000', '0001-10-01', 3, 2),
('AndrÃ©', 'andre_francisco_munhoz@live.com', '42999862732', '1999-09-04', 4, NULL),
('Fernando', 'fernado@hotmail.com', '4299707070', '2000-05-01', 5, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_endereco`
--

DROP TABLE IF EXISTS `pessoa_endereco`;
CREATE TABLE IF NOT EXISTS `pessoa_endereco` (
  `fk_Endereco_Id_Endereco` int(11) DEFAULT NULL,
  KEY `FK_Pessoa_Endereco_1` (`fk_Endereco_Id_Endereco`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `realiza`
--

DROP TABLE IF EXISTS `realiza`;
CREATE TABLE IF NOT EXISTS `realiza` (
  `fk_VOO_Id_VOO` int(11) DEFAULT NULL,
  `fk_Companhia_Aerea_Id_Companhia` int(11) DEFAULT NULL,
  KEY `FK_Realiza_1` (`fk_VOO_Id_VOO`),
  KEY `FK_Realiza_2` (`fk_Companhia_Aerea_Id_Companhia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relacao10_passageiro_pessoa_funcionario`
--

DROP TABLE IF EXISTS `relacao10_passageiro_pessoa_funcionario`;
CREATE TABLE IF NOT EXISTS `relacao10_passageiro_pessoa_funcionario` (
  `fk_Passageiro_Id_Passageiro` int(11) DEFAULT NULL,
  `fk_Funcionario_Id_Funcionario` int(11) DEFAULT NULL,
  KEY `FK_Relacao10_Passageiro_Pessoa_Funcionario_1` (`fk_Passageiro_Id_Passageiro`),
  KEY `FK_Relacao10_Passageiro_Pessoa_Funcionario_2` (`fk_Funcionario_Id_Funcionario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relacao16`
--

DROP TABLE IF EXISTS `relacao16`;
CREATE TABLE IF NOT EXISTS `relacao16` (
  `fk_PASSAGEM_Id_Passagem` int(11) DEFAULT NULL,
  `fk_Tipo_Passagem_Classe` varchar(100) DEFAULT NULL,
  KEY `FK_Relacao16_1` (`fk_PASSAGEM_Id_Passagem`),
  KEY `FK_Relacao16_2` (`fk_Tipo_Passagem_Classe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relacionamento_2`
--

DROP TABLE IF EXISTS `relacionamento_2`;
CREATE TABLE IF NOT EXISTS `relacionamento_2` (
  `fk_Situacao_Reserva` int(11) DEFAULT NULL,
  `fk_PASSAGEM_Id_Passagem` int(11) DEFAULT NULL,
  KEY `FK_Relacionamento_2_1` (`fk_Situacao_Reserva`),
  KEY `FK_Relacionamento_2_2` (`fk_PASSAGEM_Id_Passagem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao`
--

DROP TABLE IF EXISTS `situacao`;
CREATE TABLE IF NOT EXISTS `situacao` (
  `NumeroAssento` int(11) DEFAULT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `DataVoo` date DEFAULT NULL,
  `DataReserva` date DEFAULT NULL,
  `Id_Situacao` int(11) NOT NULL,
  `Id_Passagem` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Situacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tem`
--

DROP TABLE IF EXISTS `tem`;
CREATE TABLE IF NOT EXISTS `tem` (
  `fk_Companhia_Aerea_Id_Companhia` int(11) DEFAULT NULL,
  `fk_Funcionario_Id_Funcionario` int(11) DEFAULT NULL,
  KEY `FK_Tem_1` (`fk_Companhia_Aerea_Id_Companhia`),
  KEY `FK_Tem_2` (`fk_Funcionario_Id_Funcionario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_passagem`
--

DROP TABLE IF EXISTS `tipo_passagem`;
CREATE TABLE IF NOT EXISTS `tipo_passagem` (
  `Nome` varchar(100) DEFAULT NULL,
  `Classe` varchar(100) NOT NULL,
  `Id_Passagem` int(11) DEFAULT NULL,
  PRIMARY KEY (`Classe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `trecho`
--

DROP TABLE IF EXISTS `trecho`;
CREATE TABLE IF NOT EXISTS `trecho` (
  `NumTrecho` int(11) NOT NULL AUTO_INCREMENT,
  `Id_AeroportoPartida` int(11) NOT NULL,
  `Id_AeroportoChegada` int(11) NOT NULL,
  PRIMARY KEY (`NumTrecho`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `trecho`
--

INSERT INTO `trecho` (`NumTrecho`, `Id_AeroportoPartida`, `Id_AeroportoChegada`) VALUES
(1, 1, 2),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `trecho_voo`
--

DROP TABLE IF EXISTS `trecho_voo`;
CREATE TABLE IF NOT EXISTS `trecho_voo` (
  `NumTrecho` int(11) DEFAULT NULL,
  `Id_VOO` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `trecho_voo`
--

INSERT INTO `trecho_voo` (`NumTrecho`, `Id_VOO`) VALUES
(1, 31),
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `voo`
--

DROP TABLE IF EXISTS `voo`;
CREATE TABLE IF NOT EXISTS `voo` (
  `Id_VOO` int(11) NOT NULL AUTO_INCREMENT,
  `NomeVOO` varchar(100) DEFAULT NULL,
  `Id_Aviao` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_VOO`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `voo`
--

INSERT INTO `voo` (`Id_VOO`, `NomeVOO`, `Id_Aviao`) VALUES
(4, 'Aeroporto Internacional Afonso Pena x Aeroporto de SÃ£o Paulo/Congonhas', 1),
(3, 'Aeroporto Internacional Afonso Pena x Aeroporto de SÃ£o Paulo/Congonhas', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
