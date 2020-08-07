-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Ago-2020 às 22:29
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbinfox`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbclientes`
--

CREATE TABLE `tbclientes` (
  `idcli` int(11) NOT NULL,
  `nomecli` varchar(50) NOT NULL,
  `endcli` varchar(100) DEFAULT NULL,
  `fonecli` varchar(50) NOT NULL,
  `emailcli` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbclientes`
--

INSERT INTO `tbclientes` (`idcli`, `nomecli`, `endcli`, `fonecli`, `emailcli`) VALUES
(1, 'João Ferreira da Silva', 'Vila 4 Irmãos casa 10', '2222-3333', 'joao.silva@hotmail.com'),
(2, 'Nelma Batista da Costa', 'Vila 4 irmãos casa 5', '7777-6666', 'nelma@hotmail.com'),
(3, 'Debora Gibson Silva', 'Passagem São Silvestre casa 20', '5555-5555', 'debora@gmail.com'),
(4, 'Snaira Santos', 'Tenoné 100', '1010-2020', 'snaira@gmail.com'),
(5, 'Bianca Silva', 'Monte alegre nº 200', '6060-7070', 'bia@yahoo.com.br'),
(6, 'Beatriz Meireles', 'Mundurucus nº 1625', '9857-1254', 'bea@outlook.com'),
(7, 'Luciana Mercês Alves', 'Barcarena 1547', '96857412', 'luh@outlook.com'),
(8, 'Maria Lucua Ferreira da Silva', 'Vila 4 irmaos casa 10', '98547126', 'mlucia@bol.com.br'),
(9, 'Helena Badari', 'Rua nova 1547', '95826471', 'hbadari@gmail.com'),
(10, 'Daylane Laissa', 'São sebastião da boa vista', '84956251', 'daylane@hotmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbos`
--

CREATE TABLE `tbos` (
  `os` int(11) NOT NULL,
  `data_os` timestamp NOT NULL DEFAULT current_timestamp(),
  `tipo` varchar(15) NOT NULL,
  `situacao` varchar(20) NOT NULL,
  `equipamento` varchar(150) NOT NULL,
  `defeito` varchar(150) NOT NULL,
  `servico` varchar(150) DEFAULT NULL,
  `tecnico` varchar(30) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `idcli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbos`
--

INSERT INTO `tbos` (`os`, `data_os`, `tipo`, `situacao`, `equipamento`, `defeito`, `servico`, `tecnico`, `valor`, `idcli`) VALUES
(1, '2020-08-07 13:47:15', 'Orçamento', 'Aguardando Aprovação', 'Notebook modelo xyz', 'Não liga', 'Troca da fonte', 'Leandro', '230.00', 1),
(2, '2020-08-07 13:55:11', 'Orçamento', 'Na bancada', 'Impressora deskjet modelo z', 'não puxa papel', '', '', '0.00', 5),
(3, '2020-08-07 13:57:35', 'OS', 'Na bancada', 'PC', 'Vírus', 'Eliminação de vírus', 'Robson', '90.00', 7),
(4, '2020-08-07 14:05:13', 'Orçamento', 'Na bancada', 'Notebook Positivo', 'Sistema operacional corrompindo', 'Formatação e instalação de sistema', 'Moisés', '100.00', 2),
(5, '2020-08-07 16:32:44', 'Orçamento', 'Aguardando Aprovação', 'Desktop DELL Optlex 9914', 'Travando quando se abre o Word', 'Reinstalação de programas', 'Rodrigo Bemergui', '70.65', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `iduser` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `fone` varchar(15) DEFAULT NULL,
  `login` varchar(15) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `perfil` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbusuarios`
--

INSERT INTO `tbusuarios` (`iduser`, `usuario`, `fone`, `login`, `senha`, `perfil`) VALUES
(1, 'Jose de Assis', '9999-9999', 'jose.assis', '123456', 'user'),
(2, 'Moisés Prado', '8086-9416', 'moises.prado', '123456', 'user'),
(4, 'Marinelma Batista', '8086-2020', 'nelma.batista', '123456', 'user'),
(5, 'Administrador', '8888-8888', 'admin', 'admin', 'admin'),
(6, 'Leandro Ramos', '4444-4444', 'leandro.ramos', '123456', 'user');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbclientes`
--
ALTER TABLE `tbclientes`
  ADD PRIMARY KEY (`idcli`);

--
-- Índices para tabela `tbos`
--
ALTER TABLE `tbos`
  ADD PRIMARY KEY (`os`),
  ADD KEY `idcli` (`idcli`);

--
-- Índices para tabela `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbclientes`
--
ALTER TABLE `tbclientes`
  MODIFY `idcli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tbos`
--
ALTER TABLE `tbos`
  MODIFY `os` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbos`
--
ALTER TABLE `tbos`
  ADD CONSTRAINT `tbos_ibfk_1` FOREIGN KEY (`idcli`) REFERENCES `tbclientes` (`idcli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
