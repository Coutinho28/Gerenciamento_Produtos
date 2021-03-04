-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 04/03/2021 às 19:15
-- Versão do servidor: 10.4.17-MariaDB
-- Versão do PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `creche`
--
CREATE DATABASE IF NOT EXISTS `creche` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `creche`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bairro`
--

CREATE TABLE `bairro` (
  `cd_bairro` int(11) NOT NULL,
  `nm_bairro` varchar(45) DEFAULT NULL,
  `cd_cidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `bairro`
--

INSERT INTO `bairro` (`cd_bairro`, `nm_bairro`, `cd_cidade`) VALUES
(1, 'Severa Cruz', NULL),
(2, 'Comeri', NULL),
(3, 'Boqueirão', NULL),
(4, 'Itaquatecetuba', NULL),
(5, 'Nova Real', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `cd_cidade` int(11) NOT NULL,
  `nm_cidade` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `cidade`
--

INSERT INTO `cidade` (`cd_cidade`, `nm_cidade`) VALUES
(1, 'Praia Grande'),
(2, 'Praia Grande'),
(3, 'Praia Grande'),
(4, 'São Vicente'),
(5, 'Mongaguá');

-- --------------------------------------------------------

--
-- Estrutura para tabela `crianca`
--

CREATE TABLE `crianca` (
  `cd_crianca` int(11) NOT NULL,
  `nm_crianca` varchar(45) DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `img_certidao` mediumblob DEFAULT NULL,
  `img_cartaoSus` mediumblob DEFAULT NULL,
  `img_vacinas` mediumblob DEFAULT NULL,
  `img_foto3x4` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `crianca`
--

INSERT INTO `crianca` (`cd_crianca`, `nm_crianca`, `dt_nascimento`, `img_certidao`, `img_cartaoSus`, `img_vacinas`, `img_foto3x4`) VALUES
(1, 'Arthur da Silva de Jesus', '2013-07-11', NULL, NULL, NULL, NULL),
(2, 'Bianca de Oliveira Coringa', '2016-06-12', NULL, NULL, NULL, NULL),
(3, 'Raspucha Lima', '2015-07-12', NULL, NULL, NULL, NULL),
(4, 'Nathalia Queirós da Silva', '2016-01-28', NULL, NULL, NULL, NULL),
(5, 'Cauâ Coutinho de Paulo', '2017-04-28', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `documentos`
--

CREATE TABLE `documentos` (
  `cd_familiar` int(11) NOT NULL,
  `cd_responsavel` int(11) DEFAULT NULL,
  `cd_crianca` int(11) DEFAULT NULL,
  `cd_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `cd_endereco` int(11) NOT NULL,
  `nm_logradouro` varchar(45) DEFAULT NULL,
  `vl_numero` varchar(9) DEFAULT NULL,
  `cd_cep` varchar(8) DEFAULT NULL,
  `img_comp_residencia` mediumblob DEFAULT NULL,
  `cd_bairro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`cd_endereco`, `nm_logradouro`, `vl_numero`, `cd_cep`, `img_comp_residencia`, `cd_bairro`) VALUES
(1, 'Rua Jaquelino IIV', '123', '11547987', NULL, NULL),
(2, 'Rua Seu Benedito', '336', '98756555', NULL, NULL),
(3, 'Rua Santa Mônica', '5756', '44558877', NULL, NULL),
(4, 'Rua Paulo Freire', '44444', '98655598', NULL, NULL),
(5, 'Avenida Getúlio Vargas', '6598', '54448879', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `cd_login` int(11) NOT NULL,
  `nm_email` varchar(45) DEFAULT NULL,
  `nm_senha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`cd_login`, `nm_email`, `nm_senha`) VALUES
(1, 'seureinaldo@gmail.com', '123456'),
(2, 'supernoob123@gmail.com', 'oliveira123'),
(3, 'cisco122error@gmail.com', 'lima123'),
(4, 'nath1an22@gmail.com', 'queir!!os123'),
(5, 'educotinho122@gmail.com', 'coutiii33698');

-- --------------------------------------------------------

--
-- Estrutura para tabela `responsavel`
--

CREATE TABLE `responsavel` (
  `cd_responsavel` int(11) NOT NULL,
  `nm_responsavel1` varchar(45) DEFAULT NULL,
  `dt_nascimento1` date DEFAULT NULL,
  `cd_cpf1` varchar(11) DEFAULT NULL,
  `telefone1` varchar(11) DEFAULT NULL,
  `email1` varchar(45) DEFAULT NULL,
  `nm_responsavel2` varchar(45) DEFAULT NULL,
  `dt_nascimento2` date DEFAULT NULL,
  `cd_cpf2` varchar(11) DEFAULT NULL,
  `telefone2` varchar(11) DEFAULT NULL,
  `email2` varchar(45) DEFAULT NULL,
  `tel_residencial` varchar(10) DEFAULT NULL,
  `cd_endereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `responsavel`
--

INSERT INTO `responsavel` (`cd_responsavel`, `nm_responsavel1`, `dt_nascimento1`, `cd_cpf1`, `telefone1`, `email1`, `nm_responsavel2`, `dt_nascimento2`, `cd_cpf2`, `telefone2`, `email2`, `tel_residencial`, `cd_endereco`) VALUES
(1, 'Reinaldo da Silva de Jesus', '1975-06-21', '12356985415', '13954512236', 'seureinaldo@gmail.com', 'Reinalda dos Santos de Jesus', '1970-04-06', '12365897548', '13974562145', 'suareinalda@gmail.com', '1398985645', NULL),
(2, 'Astobaldo de Oliveira', '1999-04-01', '45698523147', '13987456314', 'supernoob123@gmail.com', 'Clodomira Amaral Coringa', '1998-02-22', '98564785212', '13964789998', 'coringa122@gmail.com', '1368986545', NULL),
(3, 'Francisco de Lima', '1985-09-01', '45698555874', '13956412578', 'cisco122error@gmail.com', 'Roberta de Lima', '1980-02-29', '12365489877', '13987454545', 'robertaaah@gmail.com', '1365985421', NULL),
(4, 'Nathan Queiróz', '1988-08-22', '12356555878', '13965478512', 'nath1an22@gmail.com', 'Tamires Queiróz da Silva ', '1979-06-08', '33336985467', '13932321458', 'tamires21@gmail.com', '1347586932', NULL),
(5, 'Eduardo Coutinho', '1993-11-13', '12357348977', '13965231478', 'educotinho122@gmail.com', 'Samantha de Paulo Coutinho', '1988-04-22', '22225897459', '19874565477', 'samanthhha@gmail.com', '1312457887', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_bairro`
--

CREATE TABLE `tb_bairro` (
  `cd_bairro` int(11) NOT NULL,
  `nm_bairro` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cd_cidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `tb_bairro`
--

INSERT INTO `tb_bairro` (`cd_bairro`, `nm_bairro`, `cd_cidade`) VALUES
(1, 'Montanhês', 1),
(2, 'Mata da Praia', 2),
(3, 'Tocantins', 3),
(4, 'Vila Victor Issler', 4),
(5, 'Manoel Teles', 5),
(6, 'Mangabeira', 6),
(7, 'Monte Castelo', 7),
(8, 'Vila Maranhão', 8),
(9, 'Gurupi', 9),
(10, 'Zacarias Gonçalves', 10),
(11, 'Planalto', 11),
(12, 'Cidade Universitária', 12),
(13, 'Jardim Curitiba', 13),
(14, 'Mocambinho', 14),
(15, 'Bequimão', 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cidade`
--

CREATE TABLE `tb_cidade` (
  `cd_cidade` int(11) NOT NULL,
  `nm_cidade` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cd_uf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `tb_cidade`
--

INSERT INTO `tb_cidade` (`cd_cidade`, `nm_cidade`, `cd_uf`) VALUES
(1, 'Rio Branco', 1),
(2, 'Vitória', 8),
(3, 'Toledo', 18),
(4, 'Passo Fundo', 23),
(5, 'Arapiraca', 2),
(6, 'Feira de Santana', 5),
(7, 'Campo Grande', 12),
(8, 'São Luís', 10),
(9, 'Teresina', 17),
(10, 'Crato', 6),
(11, 'Teresina', 17),
(12, 'Maceió', 2),
(13, 'Goiânia', 9),
(14, 'Teresina', 17),
(15, 'São Luís', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_contato`
--

CREATE TABLE `tb_contato` (
  `cd_contato` int(11) NOT NULL,
  `email` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ddd` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cd_pessoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `tb_contato`
--

INSERT INTO `tb_contato` (`cd_contato`, `email`, `telefone`, `ddd`, `cd_pessoa`) VALUES
(1, 'davicarloseduardoedsondamota-93@br.ibm.com', '3658-3224', '68', 1),
(2, 'rafaellevisilveira@construtoracostanorte.com.br', '2895-1274', '27', 2),
(3, 'caiosergioalexandredrumond@gmailo.com', '2713-5932', '41', 3),
(4, 'maiteyasminevelynalves@startingfitness.com.br', '2927-1707', '51', 4),
(5, 'rritajuliaclaudialima@htomail.com', '2783-9658', '82', 5),
(6, 'sergiocarloscastro_@libero.it', '2814-3150', '73', 6),
(7, 'severinofranciscosales-93@jpmanager.com.br', '3571-7170', '67', 7),
(8, 'aaylajulianarezende@gmx.de', '2761-0442', '98', 8),
(9, 'aparecidaalanaassis-71@whgames.com.br', '564-0232', '86', 9),
(10, 'josefaisabellepinto@keffin.com.br', '2924-0446', '85', 10),
(11, 'sophiapriscilaallanaalves@kaynak.com.br', '3921-7959', '86', 11),
(12, 'ssamuelhugoalmeida@oliveiracontabil.com.br', '3848-2307', '82', 12),
(13, 'igormarcoscastro@vpsa.com.br', '3645-2561', '62', 13),
(14, 'ffernandaluciadamata@imobideal.com', '3975-0318', '86', 14),
(15, 'sseverinoviniciusjosemonteiro@marithimaconstrutora.com.br', '3729-4888', '98', 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_crianca`
--

CREATE TABLE `tb_crianca` (
  `cd_crianca` int(11) NOT NULL,
  `nm_crianca` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `img_sus` mediumblob DEFAULT NULL,
  `img_vacina` mediumblob DEFAULT NULL,
  `img_certidao_nasc` mediumblob DEFAULT NULL,
  `img_3x4` mediumblob DEFAULT NULL,
  `genero_crianca` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cd_matricula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `tb_crianca`
--

INSERT INTO `tb_crianca` (`cd_crianca`, `nm_crianca`, `data_nasc`, `img_sus`, `img_vacina`, `img_certidao_nasc`, `img_3x4`, `genero_crianca`, `cd_matricula`) VALUES
(1, 'Adriana Valentina', '2018-01-01', NULL, NULL, NULL, NULL, 'F', 1),
(2, 'Thales Gael Silveira', '2018-01-01', NULL, NULL, NULL, NULL, 'M', 2),
(3, 'Nathan Sérgio Juan Drumond', '2018-01-01', NULL, NULL, NULL, NULL, 'M', 3),
(4, 'Benedita Rayssa', '2017-01-01', NULL, NULL, NULL, NULL, 'F', 4),
(5, 'Renata Luzia', '2017-01-01', NULL, NULL, NULL, NULL, 'F', 5),
(6, 'Bernardo Sérgio Isaac Castro', '2017-01-01', NULL, NULL, NULL, NULL, 'M', 6),
(7, 'Nair Catarina', '2016-01-01', NULL, NULL, NULL, NULL, 'F', 7),
(8, 'Eduardo Carlos Eduardo Ryan Rezende', '2016-01-01', NULL, NULL, NULL, NULL, 'M', 8),
(9, 'Mariah Vanessa', '2016-01-01', NULL, NULL, NULL, NULL, 'F', 9),
(10, 'Ian Luan Julio Pinto', '2015-01-01', NULL, NULL, NULL, NULL, 'F', 10),
(11, 'Elaine Julia Sophia', '2015-01-01', NULL, NULL, NULL, NULL, 'M', 11),
(12, 'Erick Nelson Noah Almeida', '2015-01-01', NULL, NULL, NULL, NULL, 'M', 12),
(13, 'Daiane Elisa Bianca', '2014-01-01', NULL, NULL, NULL, NULL, 'F', 13),
(14, 'Heitor Kauê da Mata', '2014-01-01', NULL, NULL, NULL, NULL, 'M', 14),
(15, 'Alessandra Emilly Mirella', '2014-01-01', NULL, NULL, NULL, NULL, 'F', 15);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`cd_bairro`),
  ADD KEY `fk_bairro_cidade` (`cd_cidade`);

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`cd_cidade`);

--
-- Índices de tabela `crianca`
--
ALTER TABLE `crianca`
  ADD PRIMARY KEY (`cd_crianca`);

--
-- Índices de tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`cd_familiar`),
  ADD KEY `fk_documentos_responsavel` (`cd_responsavel`),
  ADD KEY `fk_documentos_crianca` (`cd_crianca`),
  ADD KEY `fk_documentos_login` (`cd_login`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cd_endereco`),
  ADD KEY `fk_endereco_bairro` (`cd_bairro`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`cd_login`);

--
-- Índices de tabela `responsavel`
--
ALTER TABLE `responsavel`
  ADD PRIMARY KEY (`cd_responsavel`),
  ADD KEY `fk_responsavel_endereco` (`cd_endereco`);

--
-- Índices de tabela `tb_bairro`
--
ALTER TABLE `tb_bairro`
  ADD PRIMARY KEY (`cd_bairro`),
  ADD KEY `fk_bairro_cidade` (`cd_cidade`);

--
-- Índices de tabela `tb_cidade`
--
ALTER TABLE `tb_cidade`
  ADD PRIMARY KEY (`cd_cidade`),
  ADD KEY `fk_cidade_uf` (`cd_uf`);

--
-- Índices de tabela `tb_contato`
--
ALTER TABLE `tb_contato`
  ADD PRIMARY KEY (`cd_contato`),
  ADD KEY `fk_contato_pessoa` (`cd_pessoa`);

--
-- Índices de tabela `tb_crianca`
--
ALTER TABLE `tb_crianca`
  ADD PRIMARY KEY (`cd_crianca`),
  ADD KEY `fk_crianca_matricula` (`cd_matricula`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `bairro`
--
ALTER TABLE `bairro`
  ADD CONSTRAINT `fk_bairro_cidade` FOREIGN KEY (`cd_cidade`) REFERENCES `cidade` (`cd_cidade`);

--
-- Restrições para tabelas `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `fk_documentos_crianca` FOREIGN KEY (`cd_crianca`) REFERENCES `crianca` (`cd_crianca`),
  ADD CONSTRAINT `fk_documentos_login` FOREIGN KEY (`cd_login`) REFERENCES `login` (`cd_login`),
  ADD CONSTRAINT `fk_documentos_responsavel` FOREIGN KEY (`cd_responsavel`) REFERENCES `responsavel` (`cd_responsavel`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `fk_endereco_bairro` FOREIGN KEY (`cd_bairro`) REFERENCES `bairro` (`cd_bairro`);

--
-- Restrições para tabelas `responsavel`
--
ALTER TABLE `responsavel`
  ADD CONSTRAINT `fk_responsavel_endereco` FOREIGN KEY (`cd_endereco`) REFERENCES `endereco` (`cd_endereco`);
--
-- Banco de dados: `e`
--
CREATE DATABASE IF NOT EXISTS `e` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `e`;
--
-- Banco de dados: `kcb`
--
CREATE DATABASE IF NOT EXISTS `kcb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kcb`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ADM`
--

CREATE TABLE `ADM` (
  `id_adm` int(1) NOT NULL,
  `nm_adm` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `id_usuario` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `ADM`
--

INSERT INTO `ADM` (`id_adm`, `nm_adm`, `email`, `senha`, `id_usuario`) VALUES
(1, 'luacas', 'lucas.coutinho@22.com', '123456', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_cat` int(1) NOT NULL,
  `nome_categoria` varchar(51) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_cat`, `nome_categoria`) VALUES
(2, 'padaria'),
(3, 'bebidas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Produtos`
--

CREATE TABLE `Produtos` (
  `id_produtos` int(1) NOT NULL,
  `nome_produto` varchar(50) NOT NULL,
  `descri` varchar(50) NOT NULL,
  `valor` int(10) NOT NULL,
  `sstatus` int(10) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `Subcateegoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `Produtos`
--

INSERT INTO `Produtos` (`id_produtos`, `nome_produto`, `descri`, `valor`, `sstatus`, `categoria`, `Subcateegoria`) VALUES
(1, 'Queijo', 'Queijo mussarela, vendido por grama ', 10, 1, 'padaria ', 'frios '),
(2, 'peito de peru ', 'vendido por grama ', 12, 1, 'padaria ', 'frios '),
(3, 'Coca cola ', 'Bebida deve ser colocada na geladeira ', 12, 1, 'bebidas', 'refrigerante'),
(4, 'Suco de uva ', 'Bebida sabor uva ', 10, 1, 'bebidas ', 'suco ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `subCategoria`
--

CREATE TABLE `subCategoria` (
  `id_sub` int(1) NOT NULL,
  `nome_categoria` varchar(50) NOT NULL,
  `nome_sub` varchar(51) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `subCategoria`
--

INSERT INTO `subCategoria` (`id_sub`, `nome_categoria`, `nome_sub`) VALUES
(1, 'padaria', 'frios'),
(2, 'padaria', 'trigos '),
(3, 'bebidas', 'refrigerante'),
(4, 'bebidas', 'suco');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(1) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` int(10) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `email`, `telefone`, `senha`) VALUES
(1, 'lucas coutinho machado', 'lucas_coutinho2001@hotmail,com', 123456, '123456'),
(2, 'mateus', 'mateus.coutinho@22.com', 147852, '123456');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `ADM`
--
ALTER TABLE `ADM`
  ADD PRIMARY KEY (`id_adm`),
  ADD KEY `fk_usuario_ADM` (`id_usuario`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_cat`);

--
-- Índices de tabela `Produtos`
--
ALTER TABLE `Produtos`
  ADD PRIMARY KEY (`id_produtos`);

--
-- Índices de tabela `subCategoria`
--
ALTER TABLE `subCategoria`
  ADD PRIMARY KEY (`id_sub`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ADM`
--
ALTER TABLE `ADM`
  MODIFY `id_adm` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_cat` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `Produtos`
--
ALTER TABLE `Produtos`
  MODIFY `id_produtos` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `subCategoria`
--
ALTER TABLE `subCategoria`
  MODIFY `id_sub` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `ADM`
--
ALTER TABLE `ADM`
  ADD CONSTRAINT `fk_usuario_ADM` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
--
-- Banco de dados: `loja_roupa`
--
CREATE DATABASE IF NOT EXISTS `loja_roupa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loja_roupa`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Endereco_usuario`
--

CREATE TABLE `Endereco_usuario` (
  `ID_ENDERECO` int(1) NOT NULL,
  `cp_usuario` int(8) NOT NULL,
  `estado_usuario` varchar(50) NOT NULL,
  `cidade_usuario` varchar(50) NOT NULL,
  `bairro_usuario` varchar(50) NOT NULL,
  `endereco_usuario` varchar(50) NOT NULL,
  `N_endereco` int(10) NOT NULL,
  `Id_usuario` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id_login` int(1) NOT NULL,
  `email_login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `Id_usuario` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `ID_pedido` int(1) NOT NULL,
  `ID_produtos` int(1) NOT NULL,
  `Id_usuario` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID_produtos` int(1) NOT NULL,
  `nome_produto` varchar(45) NOT NULL,
  `descr_produto` varchar(45) NOT NULL,
  `categoria_produto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` int(1) NOT NULL,
  `nome_usuario` varchar(45) NOT NULL,
  `Cpf_usuario` int(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `ddd_usuario` int(2) NOT NULL,
  `telefone1_usuario` int(9) NOT NULL,
  `email_usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Endereco_usuario`
--
ALTER TABLE `Endereco_usuario`
  ADD PRIMARY KEY (`ID_ENDERECO`),
  ADD KEY `fk_Endereco_usuario` (`Id_usuario`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID_pedido`),
  ADD KEY `fk_pedido_produtos` (`ID_produtos`),
  ADD KEY `fk_pedido_usuario` (`Id_usuario`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID_produtos`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Endereco_usuario`
--
ALTER TABLE `Endereco_usuario`
  MODIFY `ID_ENDERECO` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ID_pedido` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID_produtos` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_usuario` int(1) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `Endereco_usuario`
--
ALTER TABLE `Endereco_usuario`
  ADD CONSTRAINT `fk_Endereco_usuario` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id_usuario`);

--
-- Restrições para tabelas `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `Id_usuario` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id_usuario`);

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_produtos` FOREIGN KEY (`ID_produtos`) REFERENCES `produtos` (`ID_produtos`),
  ADD CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id_usuario`);
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Despejando dados para a tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'kcb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"creche\",\"e\",\"kcb\",\"loja_roupa\",\"phpmyadmin\",\"Product\",\"robo\",\"teste2\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estrutura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"Estrutura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"kcb\",\"table\":\"usuario\"},{\"db\":\"kcb\",\"table\":\"ADM\"},{\"db\":\"kcb\",\"table\":\"categoria\"},{\"db\":\"kcb\",\"table\":\"subCategoria\"},{\"db\":\"kcb\",\"table\":\"Produtos\"},{\"db\":\"kcb\",\"table\":\"tb_login\"},{\"db\":\"Product\",\"table\":\"Produto\"},{\"db\":\"Product\",\"table\":\"categoria\"},{\"db\":\"Product\",\"table\":\"sub_categoria\"},{\"db\":\"Product\",\"table\":\"usuario\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-03-04 18:06:14', '{\"lang\":\"pt_BR\",\"Console\\/Mode\":\"collapse\",\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices de tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices de tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices de tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices de tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices de tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices de tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices de tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices de tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices de tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `Product`
--
CREATE DATABASE IF NOT EXISTS `Product` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Product`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_cat` int(1) NOT NULL,
  `titulo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_cat`, `titulo`) VALUES
(1, 'eletronia'),
(2, 'p');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Produto`
--

CREATE TABLE `Produto` (
  `id_produtos` int(1) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `sub_cat` varchar(50) NOT NULL,
  `dscr` varchar(1200) NOT NULL,
  `valor` varchar(10) NOT NULL,
  `sstatus` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `Produto`
--

INSERT INTO `Produto` (`id_produtos`, `titulo`, `categoria`, `sub_cat`, `dscr`, `valor`, `sstatus`) VALUES
(1, 'p', 'ç', 'l', 'ltyh', '10', 'ativo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sub_categoria`
--

CREATE TABLE `sub_categoria` (
  `id_sub_cat` int(1) NOT NULL,
  `id_cat` int(1) NOT NULL,
  `titulo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_login`
--

CREATE TABLE `tb_login` (
  `id_login` int(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `id_usuario` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `tb_login`
--

INSERT INTO `tb_login` (`id_login`, `email`, `senha`, `id_usuario`) VALUES
(1, 'lucas.coutinho2001@gmail.com', 'm2aoco', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(1) NOT NULL,
  `nome_usuario` varchar(50) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `telefone_usuario` varchar(9) NOT NULL,
  `cate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `email_usuario`, `telefone_usuario`, `cate`) VALUES
(1, 'lucas ', 'lucas.coutinho20013gmail.com', '123456789', ''),
(2, 'mayla', 'mayla@m.com', '123456789', ''),
(3, 'lucas ', 'lucas.coutinho20013gmail.com', '123456789', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_cat`);

--
-- Índices de tabela `Produto`
--
ALTER TABLE `Produto`
  ADD PRIMARY KEY (`id_produtos`);

--
-- Índices de tabela `sub_categoria`
--
ALTER TABLE `sub_categoria`
  ADD PRIMARY KEY (`id_sub_cat`);

--
-- Índices de tabela `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `fk_usuario_TBlogin` (`id_usuario`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_login` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_login`
--
ALTER TABLE `tb_login`
  ADD CONSTRAINT `fk_usuario_TBlogin` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
--
-- Banco de dados: `robo`
--
CREATE DATABASE IF NOT EXISTS `robo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `robo`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Endereco_usuario`
--

CREATE TABLE `Endereco_usuario` (
  `Id_Endereco_usuario` int(1) NOT NULL,
  `cep_endereco` int(8) NOT NULL,
  `ciadade_endereco` varchar(45) NOT NULL,
  `pais_usuario` varchar(45) NOT NULL,
  `Id_usuario` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id_servicos` int(1) NOT NULL,
  `desc_servico` varchar(45) NOT NULL,
  `sstatus` varchar(50) NOT NULL,
  `Id_usuario` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Usuario`
--

CREATE TABLE `Usuario` (
  `Id_usuario` int(1) NOT NULL,
  `nome_usurio` varchar(50) NOT NULL,
  `tipo_servico_usuario` varchar(10) NOT NULL,
  `telefone_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Endereco_usuario`
--
ALTER TABLE `Endereco_usuario`
  ADD KEY `fk_usuario_endereco` (`Id_usuario`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_servicos`),
  ADD KEY `fk_servicos_endereco` (`Id_usuario`);

--
-- Índices de tabela `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id_servicos` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `Id_usuario` int(1) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `Endereco_usuario`
--
ALTER TABLE `Endereco_usuario`
  ADD CONSTRAINT `fk_usuario_endereco` FOREIGN KEY (`Id_usuario`) REFERENCES `Usuario` (`Id_usuario`);

--
-- Restrições para tabelas `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `fk_servicos_endereco` FOREIGN KEY (`Id_usuario`) REFERENCES `Usuario` (`Id_usuario`);
--
-- Banco de dados: `teste2`
--
CREATE DATABASE IF NOT EXISTS `teste2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `teste2`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereço`
--

CREATE TABLE `endereço` (
  `nome_endereco` varchar(50) NOT NULL,
  `N_endereco` int(10) NOT NULL,
  `CEP_endereco` int(8) NOT NULL,
  `cidade_endereco` varchar(50) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Usuario`
--

CREATE TABLE `Usuario` (
  `id_usuario` int(1) NOT NULL,
  `nome_usuario` varchar(50) NOT NULL,
  `senha_usuario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `endereço`
--
ALTER TABLE `endereço`
  ADD KEY `fk_UsuarioEndereco` (`id_usuario`);

--
-- Índices de tabela `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id_usuario` int(1) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `endereço`
--
ALTER TABLE `endereço`
  ADD CONSTRAINT `fk_UsuarioEndereco` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
