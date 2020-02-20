-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Fev-2020 às 20:20
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
-- Banco de dados: `mercado`
--
CREATE DATABASE IF NOT EXISTS `mercado` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mercado`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codigo_produto` int(11) NOT NULL,
  `descricao_produto` varchar(100) DEFAULT NULL,
  `preco_produto` double(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codigo_produto`, `descricao_produto`, `preco_produto`) VALUES
(12, 'Catchup', 2.30),
(13, 'NESCAU', 5.00),
(15, 'AlteraÃ§Ã£o', 1.00),
(16, 'A', 1.00),
(17, 'kkkkkkkkkkkkkkkk', 5.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codigo_produto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codigo_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Banco de dados: `projetojava`
--
CREATE DATABASE IF NOT EXISTS `projetojava` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projetojava`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(10) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `cpf`, `email`, `telefone`) VALUES
(1, 'Moisés F. do Prado', '890.119.452-04', 'moises.prado.bcc@outlook.com', '(91)98086-9416'),
(2, 'João Grilo', '845216974', 'jgrilo@email.com', '32456897'),
(3, 'Romulo Bel', '98745216387', 'bel@email.com', '987457485'),
(8, 'Moisés F do Prado', '89011945204', 'moises.prado.bcc@outlook.com', '(91)98086-9416'),
(10, 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa'),
(11, 'ffffffffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffffffffffff'),
(12, 'gggggggggggggggggggggg', 'gggggggggggggggggggggg', 'gggggggggggggggggggggg', 'gggggggggggggggggggggg'),
(13, 'kkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkk');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Banco de dados: `s01`
--
CREATE DATABASE IF NOT EXISTS `s01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `s01`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` varchar(3) NOT NULL,
  `nome_funcionario` varchar(40) NOT NULL,
  `telefone_funcionario` varchar(11) NOT NULL,
  `endereco_funcionario` varchar(40) NOT NULL,
  `setor_funcionario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(3) NOT NULL,
  `login_usuario` varchar(40) DEFAULT NULL,
  `senha_usuario` varchar(8) DEFAULT NULL,
  `perfil_usuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `login_usuario`, `senha_usuario`, `perfil_usuario`) VALUES
(1, 'admin', 'admin', 'administrador');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Banco de dados: `teste`
--
CREATE DATABASE IF NOT EXISTS `teste` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `teste`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(10) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `cpf`, `email`, `telefone`) VALUES
(1, 'Moisés F. do Prado', '890.119.452-04', 'moises.prado.bcc@outlook.com', '(91)98086-9416'),
(2, 'João Grilo', '845216974', 'jgrilo@email.com', '32456897'),
(3, 'Romulo Bel', '98745216387', 'bel@email.com', '987457485'),
(4, 'shsgdsgdgsdgsdgsdgsdg', 'sdfsdfsdfsdfsdfsdf', 'sdfsdfsdfsdfsd', 'sdfsdfsdfsdfsdfsdfsd'),
(5, 'bbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbb'),
(6, 'cccccccccccccccccccccc', 'cccccccccccccccccccccc', 'cccccccccccccccccccccc', 'cccccccccccccccccccccc'),
(7, 'ddddddddddddddddddd', 'ddddddddddddddddddd', 'ddddddddddddddddddd', 'ddddddddddddddddddd');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
