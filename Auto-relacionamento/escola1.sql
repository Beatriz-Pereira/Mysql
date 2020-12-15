-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Dez-2020 às 19:17
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargofuncionario`
--

CREATE TABLE `cargofuncionario` (
  `codfuncionario` int(11) NOT NULL,
  `Codcargo` int(11) NOT NULL,
  `datadeentrada` date NOT NULL,
  `datadesaida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargofuncionario`
--

INSERT INTO `cargofuncionario` (`codfuncionario`, `Codcargo`, `datadeentrada`, `datadesaida`) VALUES
(3, 4, '2011-12-03', '2012-12-03'),
(4, 2, '2011-12-09', '0000-00-00'),
(4, 4, '2011-12-09', '2014-12-09'),
(4, 1, '2011-09-03', '2015-09-03'),
(3, 1, '2011-05-09', '0000-00-00'),
(1, 1, '2011-12-03', '0000-00-00'),
(2, 1, '2011-12-09', '0000-00-00'),
(1, 3, '2013-06-08', '2014-12-09'),
(2, 3, '2014-10-09', '2015-09-03'),
(5, 1, '2011-05-09', '0000-00-00'),
(5, 3, '2019-01-01', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `Codcargo` int(11) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`Codcargo`, `cargo`) VALUES
(1, 'Professor'),
(2, 'Diretor'),
(3, 'Coordinfo'),
(4, 'Coordbiblioteca'),
(5, 'CoordAdm');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codfuncionario` int(11) NOT NULL,
  `nomefuncionario` varchar(255) NOT NULL,
  `datadeentrada` date NOT NULL,
  `datadesaida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codfuncionario`, `nomefuncionario`, `datadeentrada`, `datadesaida`) VALUES
(1, 'Cintia', '2011-12-03', '0000-00-00'),
(2, 'Anderson', '2011-12-09', '0000-00-00'),
(3, 'Amanda', '2010-10-13', '0000-00-00'),
(4, 'Celia', '2004-12-01', '0000-00-00'),
(5, 'Carlos', '2011-12-09', '0000-00-00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargofuncionario`
--
ALTER TABLE `cargofuncionario`
  ADD KEY `codfuncionario` (`codfuncionario`),
  ADD KEY `Codcargo` (`Codcargo`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`Codcargo`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codfuncionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `Codcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codfuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cargofuncionario`
--
ALTER TABLE `cargofuncionario`
  ADD CONSTRAINT `cargofuncionario_ibfk_1` FOREIGN KEY (`codfuncionario`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cargofuncionario_ibfk_2` FOREIGN KEY (`Codcargo`) REFERENCES `cargos` (`Codcargo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
