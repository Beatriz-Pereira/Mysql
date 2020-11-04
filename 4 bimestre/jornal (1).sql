-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Nov-2020 às 21:19
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Banco de dados: `jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `ra` int(11) NOT NULL,
  `ddd` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `codturma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `anoentrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`ra`, `ddd`, `telefone`, `sobrenome`, `nome`, `email`, `cidade`, `codturma`, `dia`, `mes`, `ano`, `anoentrada`) VALUES
(1, '11', '99999-4129', 'Rodrigues', 'Carolina', 'carolrodrig@gmail.com', 'Maúa', 1, 8, 9, 2003, 2018),
(2, '11', '96435-9097', 'Alencar', 'Alice', 'alialen@gmail.com', 'Ribeirão Pires', 1, 10, 11, 2004, 2000),
(3, '11', '98709-5678', 'Vieira', 'Bruna', 'brunavieira@gmail.com', 'Maúa', 3, 14, 6, 2002, 2015),
(4, '11', '65478-0987', 'Santos', 'Thobias', 'tobiassantos@gmail.com', 'Ribeirão Pires', 5, 12, 9, 2002, 1999),
(5, '11', '34567-7654', 'Souza', 'Gustavo', 'gusouza@gmail.com', 'Maúa', 6, 19, 1, 2002, 1991),
(6, '11', '97680-6789', 'Rocha', 'Alana', 'alanarocha@gamil.com', 'Maúa ', 2, 6, 10, NULL, 2014);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codcat` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcat`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Politica'),
(3, 'Religião'),
(4, 'Cultura'),
(5, 'Entreterimento'),
(6, 'Econômia'),
(7, 'Educação'),
(8, 'Infra-Estrutura'),
(9, 'Saúde');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codnoticia` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `ra` int(11) DEFAULT NULL,
  `codcat` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codnoticia`, `descricao`, `titulo`, `ra`, `codcat`, `ano`, `mes`, `dia`) VALUES
(1, 'Alguns setores diminuirão imensamente os investimentos, mas houve quem aumentou Em termos de como os anunciantes no Reino Unido alocarão seus orçamentos... ', 'Impacto da pandemia nos gastos com publicidade digital é dividido entre  indústrias', 2, 6, 2020, 8, 16),
(2, 'Aumento foi de 21,2% no comparativo ano a ano A pandemia reduziu os gastos dos anunciantes em geral ...', 'compras dentro de aplicativos estão ultrapassando receitas de publicidade', 5, 6, 2020, 9, 16),
(3, 'Levantamento feito pelo G1 com base em dados do Tesouro mostra que em 3,4 mil municípios maioria ampla dos recursos disponíveis é proveniente de repasses do estado ou do governo federal ... ', 'Em mais de 3 mil cidades, prefeitos eleitos deve ter 80% dos recursos para realizar políticas públicas', 4, 2, 2020, 8, 10),
(4, 'Três dos cinco integrantes da primeira diretoria da Autoridade Nacional de Proteção de Dados são militares...', 'Comissão do Senado aprova indicados de Bolsonaro para diretoria da ANPD', 3, 2, 2020, 8, 10),
(5, '\'Expulsão de Gustavo Gómez, irritação de presidente do Atlético e destaque de Hugo Souza... \'', '\'Viralizou: piti de palmeirense, presida pistola, Cássio triste e milagres do goleiro do Flamengo\'', 2, 1, 2020, 8, 15),
(6, '\'Segundo levantamento da PwC, receita do segmento deve cair 6% neste ano, mas empresas e artistas já estão se adaptando ...\'', '\'Com pandemia, entretenimento se reinventa e muda  como as pessoas se divertem\'', 1, 4, 2020, 7, 20),
(7, '\'Nos últimos meses, as ofertas de entretenimento passando por uma transformação jamais vista. Se, por um lado, o isolamento social nos privou de uma série de atividades rotineiras, por outro fez com que o streaming e o consumo de conteúdo digital explodis', '\'Como a alta do entretenimento digital impulsiona a produção de conteúdo em 8K?', 2, 6, 2020, 10, 30),
(8, '\'De forma empírica, sempre se fala que a arte trabalhando como tensões e ajuda a viver a dureza da vida. Para ter uma noção mais, o Itaú Cultural e o Datafolha realizaram um levantamento em conjunto sobre o papel do setor durante a pandemia do coronavírus', '\'Atividades culturais aliviaram tensão do confinamento para 60% dos brasileiros\'', 5, 4, 2020, 7, 24),
(9, 'Masp voltou a receber público na última terça-feira (13). . ..', '\'calendário de reabertura de museus e centros culturais na cidade de São Paulo\'', 5, 4, 2020, 7, 13),
(10, '\'O levantamento informado os medicamentos não teve efeito na redução de mortalidade em 28 dias...\'', 'OMS se posiciona contra cloroquina', 4, 9, 2020, 8, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codturma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codturma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`ra`),
  ADD KEY `codturma` (`codturma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codcat`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codnoticia`),
  ADD KEY `ra` (`ra`),
  ADD KEY `codcat` (`codcat`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codturma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--


