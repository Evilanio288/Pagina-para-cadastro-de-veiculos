-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Out-2022 às 23:25
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `veiculos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessos`
--

CREATE TABLE `acessos` (
  `numero` int(11) NOT NULL,
  `hora` text NOT NULL,
  `usuario` int(11) NOT NULL,
  `ip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admins`
--

CREATE TABLE `admins` (
  `codigo` double NOT NULL,
  `login` varchar(30) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cambio`
--

CREATE TABLE `cambio` (
  `codigo` int(11) NOT NULL,
  `nome` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cambio`
--

INSERT INTO `cambio` (`codigo`, `nome`) VALUES
(1, 'Manual'),
(2, 'Automático'),
(3, 'TipTronic'),
(4, 'Automático sequencial');

-- --------------------------------------------------------

--
-- Estrutura da tabela `combust`
--

CREATE TABLE `combust` (
  `codigo` int(11) NOT NULL,
  `nome` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `combust`
--

INSERT INTO `combust` (`codigo`, `nome`) VALUES
(1, 'Gasolina'),
(2, 'Alcool'),
(3, 'Flex'),
(7, 'Gnv'),
(6, 'Diesel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cores`
--

CREATE TABLE `cores` (
  `codigo` int(11) NOT NULL,
  `nome` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cores`
--

INSERT INTO `cores` (`codigo`, `nome`) VALUES
(1, 'Branco'),
(2, 'Prata'),
(3, 'Preto'),
(4, 'Vermelho'),
(5, 'Amarelo'),
(6, 'Azul'),
(7, 'Verde'),
(8, 'Cinza');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enqueteresp`
--

CREATE TABLE `enqueteresp` (
  `id_resp` int(11) NOT NULL,
  `enquete_id` int(11) DEFAULT NULL,
  `resposta` varchar(100) DEFAULT NULL,
  `votos` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `enqueteresp`
--

INSERT INTO `enqueteresp` (`id_resp`, `enquete_id`, `resposta`, `votos`) VALUES
(6, 3, 'Sites de Busca', 1),
(7, 3, 'IndicaÃ§Ã£o de amigos', NULL),
(8, 3, 'Propaganda em outros sites\r', 3),
(9, 3, 'Mala direta via e-mail', 1),
(10, 3, 'Outros', NULL),
(12, 3, 'Reportagem de revista', 0),
(38, 0, 'aaaaaa', 0),
(37, 0, 'tirar o parafuso da roda', 0),
(36, 8, 'Estepe', NULL),
(35, 8, 'TriÃ¢ngulo\r', 2),
(34, 8, 'Chave de Rodas\r', 1),
(33, 8, 'Macaco aaa', NULL),
(40, 8, 'chamo o seguro do carro', 0),
(39, 8, 'ligo para a policia', 0),
(41, 8, 'pego o extintor de incÃªndio', 0),
(45, 9, 'Em Eventos do trabalho\r', NULL),
(46, 9, 'Para viagens de negÃ³cio\r', NULL),
(47, 9, 'Para viagens de turismo\r', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enquetes`
--

CREATE TABLE `enquetes` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(100) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `termino` date DEFAULT NULL,
  `ativa` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `site` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `enquetes`
--

INSERT INTO `enquetes` (`id`, `pergunta`, `inicio`, `termino`, `ativa`, `data`, `site`) VALUES
(3, 'Como conheceu nosso site ?', '2011-11-11', '2011-12-31', 'N', '2011-11-21', 'R'),
(8, 'o que vocÃª pega primeiro para trocar um pneu?', '2011-12-01', '2011-12-31', 'N', '2011-12-23', 'T'),
(9, 'VocÃª costuma locar carros', '2011-01-01', '2012-12-31', 'S', '2011-12-23', 'L');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `codigo` int(11) NOT NULL,
  `m_nome` text NOT NULL,
  `m_logo` text NOT NULL,
  `m_site` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`codigo`, `m_nome`, `m_logo`, `m_site`) VALUES
(7, 'Hyundai', '1269505289.jpg', 'www.hyundai-motor.com.br'),
(8, 'Subaru', '1269505295.jpg', 'www.subaru.com.br'),
(9, 'Ford', '1269505275.jpg', 'www.ford.com.br'),
(10, 'Volkswagen', '', ''),
(11, 'Chevrolet', '', ''),
(12, 'Honda', '', ''),
(13, 'Toyota', '', ''),
(14, 'Fiat', '', ''),
(15, 'Peugeot', '', ''),
(16, 'Renault', '', ''),
(17, 'BMW', '', ''),
(26, 'Citroen', '', ''),
(20, 'Jaguar', '', ''),
(21, 'Ferrari', '', ''),
(23, 'Mercedes-Benz', '', ''),
(24, 'Mini Cooper', '', ''),
(25, 'Volvo', '', ''),
(27, 'Mitsubishi', '', ''),
(28, 'Land Rover', '', ''),
(29, 'Jeep Grand', '', ''),
(31, 'Porsche', '', ''),
(32, 'Dodge', '', ''),
(37, 'SSANGYONG', '', ''),
(38, 'SMART', '', ''),
(39, 'KIA', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelos`
--

CREATE TABLE `modelos` (
  `codigo` int(11) NOT NULL,
  `md_nome` text NOT NULL,
  `md_codmarca` int(11) NOT NULL,
  `md_tipo` text NOT NULL,
  `md_logo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modelos`
--

INSERT INTO `modelos` (`codigo`, `md_nome`, `md_codmarca`, `md_tipo`, `md_logo`) VALUES
(14, 'Santa Fe', 7, '1', ''),
(15, 'Terracan', 7, '1', ''),
(13, 'I30', 7, '1', ''),
(8, 'Azera', 7, '1', ''),
(9, 'Genesis', 7, '1', ''),
(10, 'H1', 7, '2', ''),
(11, 'H100', 7, '2', ''),
(12, 'HR', 7, '2', ''),
(16, 'Tucson', 7, '1', ''),
(17, 'Veracruz', 7, '1', ''),
(18, 'Outros', 7, '1', ''),
(19, 'Impreza', 8, '1', ''),
(20, 'Legacy', 8, '1', ''),
(21, 'OutBack', 8, '1', ''),
(22, 'Forester', 8, '1', ''),
(23, 'Tribeca', 8, '1', ''),
(24, 'Outros', 8, '1', ''),
(25, 'Courrier', 9, '1', ''),
(26, 'Fiesta', 9, '1', ''),
(27, 'Ranger', 9, '1', ''),
(28, 'Explorer', 9, '1', ''),
(29, 'F-250', 9, '1', ''),
(30, 'Ka', 9, '1', ''),
(31, 'Focus', 9, '1', ''),
(32, 'Fusion', 9, '1', ''),
(33, 'Edge', 9, '1', ''),
(34, 'Ecosport', 9, '1', ''),
(35, 'Outros', 9, '1', ''),
(36, 'A4', 18, '1', ''),
(37, 'TT', 18, '1', ''),
(38, '325 i', 17, '1', ''),
(39, '307', 15, '1', ''),
(40, 'VECTRA', 11, '1', ''),
(41, 'BMW 335i', 17, '1', ''),
(53, 'Xsara Picasso', 26, '1', ''),
(43, 'F-430', 21, '1', ''),
(45, 'Corolla XEI', 13, '1', ''),
(46, 'CRV', 12, '1', ''),
(47, 'CLC 200', 23, '1', ''),
(48, '1.6 S 16V Turbo', 24, '1', ''),
(68, 'IX35', 7, '1', ''),
(49, 'XC60', 25, '1', ''),
(50, 'X1', 17, '1', ''),
(51, 'Bora', 10, '1', ''),
(52, 'Elegance', 23, '1', ''),
(54, 'Airtrek', 27, '1', ''),
(55, 'Discovery', 28, '1', ''),
(56, 'Blazer', 11, '1', ''),
(57, 'V50', 25, '1', ''),
(58, 'Pajero', 27, '1', ''),
(59, 'JETTA SEDAN', 10, '1', ''),
(60, 'Cherokee', 29, '1', ''),
(61, 'Captiva', 11, '1', ''),
(62, 'A3', 18, '1', ''),
(63, 'Range Rover', 28, '1', ''),
(65, 'Cayenne', 31, '1', ''),
(66, 'Tiguan', 10, '1', ''),
(67, 'Journey', 32, '1', ''),
(74, 'Cayenne Turbo', 31, '1', ''),
(73, 'Cayenne s', 31, '1', ''),
(76, 'Dakar', 27, '1', ''),
(77, 'Q7', 18, '1', ''),
(78, 'Q5', 18, '1', ''),
(79, 'X5', 17, '1', ''),
(80, 'X3', 17, '1', ''),
(81, 'X6', 17, '1', ''),
(82, 'MALIBU LTZ', 11, '1', ''),
(83, 'OMEGA', 11, '1', ''),
(84, 'ACCORD 4CC', 12, '1', ''),
(85, 'ACCORD 6CC', 12, '1', ''),
(86, 'DISCOVERY I', 28, '1', ''),
(87, 'DISCOVERY II', 28, '1', ''),
(88, 'DISCOVERY III', 28, '1', ''),
(89, 'DISCOVERY IIII', 28, '1', ''),
(90, 'TR4', 27, '1', ''),
(91, 'OUTLANDER', 27, '1', ''),
(92, 'FREELANDER I SE', 28, '1', ''),
(93, 'FREELANDER II SE', 28, '1', ''),
(94, 'FREELANDER II HSE', 28, '1', ''),
(95, 'FREELANDER I HSE', 28, '1', ''),
(96, 'CAMRY', 13, '1', ''),
(97, 'PRADO', 13, '1', ''),
(98, 'RAV4', 13, '1', ''),
(99, 'FIELDER XEI', 13, '1', ''),
(100, 'FIELDER SEG', 13, '1', ''),
(101, 'COROLLA SEG', 13, '1', ''),
(102, 'COROLLA 2.0 ALTIS', 13, '1', ''),
(103, 'JETTA VARIANT', 10, '1', ''),
(126, 'TOUAREG', 10, '1', ''),
(127, 'FREELANDER  HSE', 28, '1', ''),
(106, 'COROLLA ALTIS 2.0', 13, '1', ''),
(107, 'HILUX SRV TD AUT.', 13, '1', ''),
(108, 'REXTON 2.7 DIESEL 186CV', 37, '1', ''),
(109, 'KYRON 2.0 DIESEL 141CV', 37, '1', ''),
(110, 'ACTYON 2.0 DIESEL 141CV', 37, '1', ''),
(111, 'ACTYON 2.3 GAS. 150CV', 37, '1', ''),
(112, 'ACTYON SPORTS 141CV', 37, '1', ''),
(113, 'DISCOVERY 4 3.0 SE 4X4 V6 TD 4P AUT', 28, '1', ''),
(114, 'DISCOVERY 4 2.7 S 4X4 V6 36V TD 4P AUT', 28, '1', ''),
(115, 'PAJERO 3.8 FULL HPE 4X4 24V GAS. 2P. AUT.', 27, '1', ''),
(116, 'PAJERO 3.8 FULL HPE 4X4 24V GAS. 2P. AUT.', 27, '1', '1280152910.jpg'),
(117, 'CRV LX 4X2', 12, '1', ''),
(118, 'CRV LXL 4X4', 12, '1', ''),
(119, 'CRV EXL 4X4', 12, '1', ''),
(121, 'FORTWO 1.0 CABRIOLET', 38, '1', ''),
(122, 'ZAFIRA', 11, '1', ''),
(123, '118i', 17, '1', ''),
(124, 'SORENTO 2.4 4X2 S.253 16V', 39, '1', ''),
(125, 'SORENTO 2.4 4X2 S.356 16V', 39, '1', ''),
(128, 'FREELANDER SE', 28, '1', ''),
(129, '320i JOY', 17, '1', ''),
(130, 'AIRTREK', 27, '1', ''),
(131, 'TOWN & COUNTRY', 40, '1', ''),
(132, 'FIESTA', 9, '1', ''),
(133, 'TRACKER', 11, '1', ''),
(134, 'GOLF 1.6 4P', 10, '1', ''),
(135, 'GOLF 1.6 4P GENERATION', 10, '1', ''),
(136, 'CIVIC LX', 12, '1', ''),
(137, 'CIVIC SI', 12, '1', ''),
(138, 'CIVIC LXS', 12, '1', ''),
(139, 'CIVIC EXS', 12, '1', ''),
(140, 'FX 35 AWD', 41, '1', ''),
(141, 'BORA 2.0', 10, '1', ''),
(142, 'B200', 23, '1', ''),
(143, 'SONATA', 7, '1', ''),
(144, 'C4 PICASSO GLXA', 26, '1', ''),
(145, 'PASSAT 1.8 TURBO', 10, '1', ''),
(146, 'GOL IMOTION', 10, '1', ''),
(147, 'JOURNEY STX', 32, '1', ''),
(148, 'PAJERO 3.8 FULL HPE 4X4 07 LUGARES', 27, '1', ''),
(149, '120I AUTOMATICA', 17, '1', ''),
(150, '540I PROTECTION', 17, '1', ''),
(151, 'GLK 280', 23, '1', ''),
(152, 'PASSAT 2.0 TURBO TIPTRONIC', 10, '1', ''),
(153, 'HILUX SW4 3.0 DIESEL TURBO', 13, '1', ''),
(154, 'RAV4 4X4', 13, '1', ''),
(155, 'PAJERO FULL HPE 3.8 7LUGARES', 27, '1', ''),
(156, 'FREELANDER 2.5 HSE', 28, '1', ''),
(157, 'FIT EX', 12, '1', ''),
(158, 'A3 1.8 TURBO 180CV', 18, '1', ''),
(159, '130i', 17, '1', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivelblind`
--

CREATE TABLE `nivelblind` (
  `codigo` int(11) NOT NULL,
  `nome` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `nivelblind`
--

INSERT INTO `nivelblind` (`codigo`, `nome`) VALUES
(1, 'I-A'),
(2, 'II-A'),
(3, 'III-A'),
(4, 'I'),
(5, 'II'),
(6, 'III'),
(7, 'IV');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_acessos`
--

CREATE TABLE `tb_acessos` (
  `datahora` text NOT NULL,
  `acessos` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_acessos`
--

INSERT INTO `tb_acessos` (`datahora`, `acessos`) VALUES
('16/06/10.06:0', 1),
('16/06/10.06:1', 24),
('16/06/10.06:5', 34),
('16/06/10.07:0', 8),
('16/06/10.07:4', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_acessos2`
--

CREATE TABLE `tb_acessos2` (
  `datahora` text NOT NULL,
  `produto` double NOT NULL,
  `acessos` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_acessos2`
--

INSERT INTO `tb_acessos2` (`datahora`, `produto`, `acessos`) VALUES
('18/06/10.20:2', 1184, 6),
('18/06/10.20:2', 740, 1),
('18/06/10.20:2', 492, 1),
('18/06/10.20:2', 79, 3),
('18/06/10.20:3', 1184, 1),
('18/06/10.20:5', 1184, 1),
('18/06/10.20:5', 1144, 2),
('18/06/10.21:1', 1065, 1),
('18/06/10.21:1', 1186, 1),
('18/06/10.21:1', 1191, 2),
('18/06/10.21:1', 1184, 1),
('18/06/10.21:5', 740, 3),
('18/06/10.22:0', 740, 6),
('18/06/10.22:1', 740, 7),
('18/06/10.22:2', 740, 5),
('18/06/10.22:3', 861, 3),
('18/06/10.22:3', 740, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `cl_codcli` double NOT NULL,
  `cl_nome` text NOT NULL,
  `cl_endereco` text NOT NULL,
  `cl_bairro` text NOT NULL,
  `cl_cidade` text NOT NULL,
  `cl_estado` text NOT NULL,
  `cl_telefone` text NOT NULL,
  `cl_celular` text NOT NULL,
  `cl_email` text NOT NULL,
  `cl_dtinclu` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoblind`
--

CREATE TABLE `tipoblind` (
  `codigo` int(11) NOT NULL,
  `nome` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `codigovei` double NOT NULL,
  `cod_mod` int(11) NOT NULL,
  `cod_marca` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `portas` int(11) NOT NULL,
  `ano_fab` int(11) NOT NULL,
  `ano_mod` int(11) NOT NULL,
  `cod_cor` int(11) NOT NULL,
  `km` double NOT NULL,
  `placa` text NOT NULL,
  `valor` double NOT NULL,
  `novousado` text NOT NULL,
  `cod_comb` int(11) NOT NULL,
  `cod_cambio` int(11) NOT NULL,
  `cod_blind` int(11) NOT NULL,
  `obs` text NOT NULL,
  `dtinclu` date NOT NULL,
  `ativo` text NOT NULL,
  `fotonome1` text NOT NULL,
  `fotonome2` text NOT NULL,
  `fotonome3` text NOT NULL,
  `fotonome4` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`codigovei`, `cod_mod`, `cod_marca`, `descricao`, `portas`, `ano_fab`, `ano_mod`, `cod_cor`, `km`, `placa`, `valor`, `novousado`, `cod_comb`, `cod_cambio`, `cod_blind`, `obs`, `dtinclu`, `ativo`, `fotonome1`, `fotonome2`, `fotonome3`, `fotonome4`) VALUES
(200, 148, 27, 'PAJERO 3.8 FULL HPE 4X4 24V GAS.', 4, 2010, 2011, 3, 30, '', 195000, '', 1, 2, 3, 'VEICULO COM GARANTIA MITSUBISHI, BLINDADO TRUFFI, OKM, QUALIDADE R2 IMPORT E AVALLON BLINDAGENS, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '1292524075.jpg', '1292524076.jpg', '1292524077.jpg', '1292524078.jpg'),
(34, 47, 23, 'CLC 200 1.8 Kompressor', 2, 2010, 2010, 3, 19, '', 149000, '', 1, 4, 3, 'Air bag duplo, Alarme, Ar condicionado, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Computador de bordo, Controle de tração, Desembaçador traseiro, Freio ABS, Limpador traseiro, Retrovisor fotocrômico, Controle automático de velocidade, Retrovisores elétricos, Rodas de liga leve, Sensor de estacionamento, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica.<br><br>\r\nBLINDAGEM AVALLON NIE III-A, COM 04 ANOS DE GARANTIA, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1276611776.jpg', '1277388724.jpg', '1276611778.jpg', '1277388725.jpg'),
(33, 46, 12, 'CRV 2.0 LX 4X2', 4, 2010, 2010, 3, 1, '', 135000, '', 1, 2, 3, 'Opcionais: <br>\r\nAir bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Rádio e CD Player, Desembaçador traseiro, Freio ABS, Limpador traseiro, Rádio, Retrovisores elétricos, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica.<br><br>\r\nBLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60 VEZES, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1276611566.jpg', '1276611567.jpg', '1276611568.jpg', '1277388778.jpg'),
(197, 129, 17, '320i JOY', 4, 2010, 2011, 3, 0, '', 160000, '', 1, 2, 3, 'VEICULO OKM PRONTA ENTREGA, BLINDAGEM AVALLON NIVEL III-A COM VIDROS AGP 21mm, MANTAS VERSEIDAG, 04 ANOS DE GARANTIA, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X INCLUSIVE A BLINDAGEM.', '2010-04-19', 'S', '1291754637.jpg', '1291754638.jpg', '1291754639.jpg', '1291754640.jpg'),
(98, 33, 9, 'EDGE 3.5 SEL V6 24V 4P * PRONTA ENTREGA *', 4, 2010, 2011, 3, 0, '', 175000, '', 1, 4, 3, 'BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1291314964.jpg', '1291314965.jpg', '1291315338.jpg', '1291315339.jpg'),
(36, 49, 25, 'XC60 3.0 DYNAMIC TB', 4, 2010, 2011, 2, 1, '', 215000, '', 1, 2, 3, 'Opcionais:\r\nAir bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Computador de bordo, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Farol xenônio, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Sensor de estacionamento, Teto solar, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica.<br><br> BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,MANTAS VERSEIDAG, VIDROS AGP 21MM, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60 VEZES, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1276714403.jpg', '1276714404.jpg', '1276714405.jpg', '1287428610.jpg'),
(165, 50, 17, 'X1 3.0 X Drive 28I ****PRONTA ENTREGA****', 4, 2010, 2011, 3, 0, '', 269000, '', 1, 2, 3, 'VEICULO PARA ENTREGA 20 DE JANEIRO 2011, BLINDADA AVALLON COM 05 ANOS DE GARANTIA, VIDROS 17MM AGP, MANTAS ALEMÃ VERSEIDAG, ANTECIPE SEU NATAL COM A AVALLON!!!!!!!!!!!!!!', '2010-04-19', 'S', '1291146540.jpg', '1291146541.jpg', '1291146542.jpg', '1291146543.jpg'),
(39, 17, 7, 'Veracruz 3.8 4x4', 4, 2010, 2011, 3, 1, 'MVY5555', 195000, '', 1, 2, 3, '*FAÇA SUA RESERVA E ANTECEDA SEU NATAL*\r\nAir bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Computador de bordo, Controle de tração, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Farol xenônio, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Sensor de estacionamento, Teto solar, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica.<br><br>\r\nBLINDAGEM AVALLON NIVEL III-A *PRONTA ENTREGA*,COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTA VERSEDAG, CREDENCIADA PELO GRUPO CAOA REPRESENTANTE HYUNDAI E SUBARU NO BRASIL,TEMOS OUTRAS CORES E MODELOS, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1288443123.jpg', '1288443124.jpg', '1288443125.jpg', '1331907412.jpg'),
(113, 8, 7, 'AZERA  3.3 V6 265cv 06M *PRONTA ENTREGA*', 4, 2010, 2011, 3, 0, '', 132000, '', 1, 4, 3, 'Motor 3.3 265 cv 06 marchas,10 air bags, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Computador de bordo, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Sensor de estacionamento, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidraulica. BLINDAGEM AVALLON NIVEL III-A, VIDROS AGP, MANTAS VERSEDAG, *PRONTA ENTREGA*,COM 04 ANOS DE GARANTIA, CREDENCIADA PELO GRUPO CAOA REPRESENTANTE HYUNDAI E SUBARU NO BRASIL,TEMOS OUTRAS CORES E MODELOS, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1280319579.jpg', '1280319580.jpg', '1280319581.jpg', '1280319582.jpg'),
(170, 143, 7, 'SONATA *IMPERDIVEL BLINDADO *', 4, 2010, 2011, 3, 0, '', 163000, 'N', 1, 4, 3, 'VENHA CONHECER O MAIS NOVO LANÇAMENTO DA HYUNDAI NA R2 IMPORT, DISPOMOS DE VEICULOS EM PROCESSO DE BLINDAGEM PARA ATENDE-LO, ACEITAMNOS SEU CARRO USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS ATE 60X, MOTOR 2.4 CVVT 16V 178CV, CAPACIDADE PORTA MALAS 464 LTS, EQUIPADO COM: AR CONDICIONADO, DIREÇÃO ELETRICA, RODAS DE LIGA LEVE ARO18, CAMBIO AUTOMATICO DE 06 MARCHAS E COMANDO BORBOLETA, CD MP3 COM IPOD/USB E MAGAZINE PARA 06 DISCOS, BANCOS EM COURO COM REGULAGEM ELETRICA E AQUECIMENTO, FREIOS ABS, EBD/BAS, CONTROLE DE ESTABILIDADE ELETRONICO, 10 AIR BAGS, FAROIS DE NEBLINA, VIDROS E TRAVAS ELETRICAS, ALARME COM TELECOMANDO DE ABERTURA E FECHAMENTO DAS PORTAS, BOTÃO DE PARTIDA ELETRICO COM SENSOR DE PRESENÇA, ACENDIMENTO AUTOMATICO DOS FAROIS, RETROVISORES COM COMANDO E RECOLHIMENTO ELETRICOS, PILOTO AUTOMATICO E COMANDO DE SOM NO VOLANTE, ABERTURA ELETRICA DO PORTA MALAS, COMPUTADOR DE BORDO, SENSOR DE ESTACIONAMENTO, TETO SOLAR PANORAMICO, FAROIS DE NEBLINA XENON E MEMORIAS DE BANCOS.', '2010-04-19', 'S', '1287425472.jpg', '1287425473.jpg', '1287425474.jpg', '1287425475.jpg'),
(97, 36, 18, 'AUDI A4 2.0 FSI 16V TURBO * PRONTA ENTREGA *', 4, 2010, 2011, 3, 0, '', 185000, '', 1, 3, 3, 'BLINDAGEM AVALLON NIVEL III-A COM 04 ANOS DE GARANTIA, MANTAS ALEMÃ VERSEIDAG, PRONTA ENTREGA, ACEITAMOS SEU VEICULO COMO PARTE E PAGAMENTO, FINANCIMOS EM ATÉ 60X.', '2010-04-19', 'S', '1279654746.jpg', '1279654747.jpg', '1283201916.jpg', '1283201917.jpg'),
(146, 62, 18, 'A3 Sportback 16V Turbo *PRONTA ENTREGA*', 4, 2010, 2011, 3, 0, '', 175000, '', 1, 3, 3, 'Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Controle de tração, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Retrovisor fotocrômico, Rádio, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica\r\nBLINDAGEM AVALLON NIVEL III=A, COM 04 ANOS DE GARANTIA, VIDROS AGP E MANTA VERSEDAG, ACEITAMOS SEU USADO NA TROCA, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR.', '2010-04-19', 'S', '1289653909.jpg', '1289653910.jpg', '1289653911.jpg', '1289653912.jpg'),
(189, 65, 31, 'CAYENNE V6 BLINDADA', 4, 2007, 2008, 3, 29000, 'DYV7700', 229000, '', 1, 2, 3, 'VEICULO COM QUALIDADE R2 IMPORT, REVISADO PELA AVALLON BLINDAGENS, VEICULO PARA PESSOAS EXIGENTES DE EXCELENTE QUALIDADE, PNEUS NOVOS, IMPECAVEL!!! ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '1291752355.jpg', '1291752356.jpg', '1291752357.jpg', '1291752358.jpg'),
(184, 17, 7, 'VERA CRUZ 3.8 V6 *BLINDADO*', 4, 2007, 2008, 3, 60000, 'FGA2008', 100000, '', 1, 2, 3, 'VEICULO COM QUALIDADE R2 IMPORT, REVISADA PELA AVALLON BLINDAGENS ESPECIAIS, SEM DELAMINAÇÕES, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '', '', '', ''),
(185, 156, 28, 'FREELANDER HSE 2.5 BLINDADA', 4, 2006, 2006, 7, 42000, 'DIM8887', 53900, '', 1, 2, 3, 'VEICULO COM QUALIDADE R2 IMPORT, REVISADO AVALLON BLINDAGENS, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '1295095438.jpg', '1295095439.jpg', '1295095440.jpg', ''),
(144, 127, 28, 'FREELANDER 2.5 HSE', 4, 2006, 2006, 3, 46000, '', 53900, '', 1, 2, 3, 'Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Rádio, Retrovisores elétricos, Rodas de liga leve, Teto solar, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica\r\nBLINDADO NIVEL III=A, SEM DELAMINAÇÃO, UNICO DONO, NOSSOS VEÍCULOS SÃO PERICIADOS E ACOMPANHAM LAUDO DA VISTORIA BRASIL, ACEITAMOS SEU USADO NA TROCA, QUALIDADE E SEGURANÇA EM UM SO LUGAR.', '2010-04-19', 'S', '1286372522.jpg', '1286372523.jpg', '1286372524.jpg', '1286372525.jpg'),
(130, 8, 7, 'AZERA  3.3 V6 265cv 06M *PRONTA ENTREGA*', 4, 2010, 2011, 2, 0, '', 135000, '', 1, 4, 3, 'Motor 3.3 265 cv 06 marchas,10 air bags, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Computador de bordo, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Sensor de estacionamento, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidraulica. BLINDAGEM AVALLON NIVEL III-A, VIDROS AGP, MANTAS VERSEDAG, *PRONTA ENTREGA*,COM 04 ANOS DE GARANTIA, CREDENCIADA PELO GRUPO CAOA REPRESENTANTE HYUNDAI E SUBARU NO BRASIL,TEMOS OUTRAS CORES E MODELOS, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1281732475.jpg', '1281732476.jpg', '1281732477.jpg', '1281732478.jpg'),
(147, 91, 27, 'OUTLANDER', 4, 2010, 2011, 3, 0, '', 150000, '', 1, 2, 3, 'BLINDADO AVALLON NIVEL III-A, COM VIDROS AGP, MANTA VERSEDAGE, 04 ANOS DE GARANTIA, ACEITAMOS SEU USADO NA TROCA, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR.', '2010-04-19', 'S', '1285712072.jpg', '1285712073.jpg', '1285712074.jpg', '1285712075.jpg'),
(148, 45, 13, 'COROLLA XEI AUTOMATICO FLEX', 4, 2010, 2011, 3, 0, '', 123000, '', 3, 2, 3, 'Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Rádio, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica\r\nAir bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Rádio, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica\r\nAir bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Rádio, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica\r\nBLINDAGEM AVALLON NIVEL III=A, COM 04 ANOS DE GARANTIA, ACEITAMOS SEU USADO NA TROCA, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR.', '2010-04-19', 'S', '1285712315.jpg', '1285712316.jpg', '1291315664.jpg', '1291315665.jpg'),
(55, 58, 27, 'TR4 4x4 2.0 PAJERO *BLINDADO*', 4, 2010, 2011, 3, 1, '', 129000, '', 3, 2, 3, 'Opcionais: <br>\r\nAir bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Rádio e CD Player, Desembaçador traseiro, Freio ABS, Limpador traseiro, Tração 4x4, Rádio, Retrovisores elétricos, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica. <br><br>\r\nBLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1285795330.jpg', '1285795331.jpg', '1285795332.jpg', '1285795333.jpg'),
(57, 32, 9, 'Fusion 3.0  AWD V6 24V', 4, 2010, 2011, 3, 1, '', 132000, '', 1, 2, 3, 'Air bag do motorista, Air bag duplo, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Rádio, Rodas de liga leve, Sensor de estacionamento, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica. BLINDAGEM AVALLON NIVEL III-A, 05 ANOS DE GARANTIA,VIDROS AGP 17mm, MANTAS VERSEIDAG, VEICULO OKM, PRONTA ENTREGA, TEMOS OUTRAS CORES, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1277484564.jpg', '1277484565.jpg', '1277484566.jpg', '1277484567.jpg'),
(61, 16, 7, 'Tucson 2.0 16V 143CV *BLINDADA*', 4, 2010, 2011, 3, 1, '', 118000, '', 1, 2, 3, 'Opcionais: <br>\r\nAir bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Rádio e CD Player, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Rádio, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica. <br><br> BLINDAGEM AVALLON NIVEL III-A *PRONTA ENTREGA*,COM 04 ANOS DE GARANTIA, CREDENCIADA PELO GRUPO CAOA REPRESENTANTE HYUNDAI E SUBARU NO BRASIL,TEMOS OUTRAS CORES E MODELOS, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1282223144.jpg', '1282223145.jpg', '1282223146.jpg', '1282223147.jpg'),
(62, 23, 8, 'TRIBECA 3.6 limited AWD 24V *BLINDADA*', 4, 2010, 2011, 3, 1, '', 215000, '', 1, 2, 3, 'Opcionais: <br>\r\nAir bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Controle de tração, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Sensor de estacionamento, Teto solar, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica.<br> <br>BLINDAGEM AVALLON NIVEL III-A *PRONTA ENTREGA*,COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, CREDENCIADA PELO GRUPO CAOA REPRESENTANTE HYUNDAI E SUBARU NO BRASIL,TEMOS OUTRAS CORES E MODELOS, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1278088297.jpg', '1278088298.jpg', '1278088299.jpg', '1277388071.jpg'),
(63, 14, 7, 'Santa Fe 3.5 V6 285CV 07 LUG.', 4, 2010, 2011, 3, 1, '', 178000, '', 1, 2, 3, '* CAMERA DE RÉ, BOTÃO DE START, CHAVE COM SENSOR DE PRESENÇA * 10 Air bags, Alarme, Ar condicionado digital e individual, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Desembaçador traseiro, Freio ABS, Limpador traseiro, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica. * BLINDAGEM AVALLON NIVEL III-A VIDROS AGP e MANTAS VERSEDAG, *PRONTA ENTREGA*,COM 04 ANOS DE GARANTIA, CREDENCIADA PELO GRUPO CAOA REPRESENTANTE HYUNDAI E SUBARU NO BRASIL,TEMOS OUTRAS CORES E MODELOS, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1287421988.jpg', '1287421989.jpg', '1276612154.jpg', '1277389358.jpg'),
(64, 66, 10, 'Tiguan 2.0 16V Turbo *BLINDADO*', 2, 2010, 2011, 3, 1, '', 158000, '', 1, 4, 3, 'Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Rádio e CD Player, Computador de bordo, Controle de tração, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Retrovisores elétricos, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica, park assistence, tip no volante.\r\nBLINDAGEM AVALLON NIVEL III-A,vidros AGP 17mm, COM 05 ANOS DE GARANTIA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60 VEZES, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1283184466.jpg', '1283184467.jpg', '1276612221.jpg', '1283184468.jpg'),
(65, 61, 11, 'Captiva Sport 2.4 Ecotec 16V', 4, 2010, 2010, 2, 1, '', 0, '', 1, 4, 3, 'Opcionais:<br/>\r\nAir bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Rádio e CD Player, Computador de bordo, Desembaçador traseiro, Freio ABS, Limpador traseiro, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica. <br/><br> \r\nBLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1276350620.jpg', '1277215533.jpg', '1277215534.jpg', '1277215535.jpg'),
(66, 67, 32, 'Journey 2.7 STX V6 * BLINDADA *', 4, 2010, 2010, 2, 0, '', 144000, '', 1, 2, 3, 'Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Rádio e CD Player, Computador de bordo, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica.<br/><br>\r\nBLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60 VEZES, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1331857232.png', '1291315405.jpg', '1291315406.jpg', ''),
(76, 82, 11, 'MALIBU LTZ 2.4 6MARCHAS 171cv RODAS18', 4, 2010, 2011, 3, 0, '', 0, '', 1, 4, 3, 'FAÇA SUA PRÉ RESERVA CONOSCO E SAIA NA FRENTE,BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDOS AGP, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1277216079.jpg', '1279025794.jpg', '1277216081.jpg', '1277216082.jpg'),
(77, 76, 27, 'Dakar Diesel', 4, 2010, 2010, 3, 0, '', 0, '', 6, 4, 3, 'BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1331854953.jpg', '1277215838.jpg', '1277215839.jpg', ''),
(80, 59, 10, 'Jetta Sedan', 4, 2010, 2010, 3, 0, '', 135000, '', 1, 4, 3, 'BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1282916955.jpg', '1282916956.jpg', '1282916957.jpg', '1282916958.jpg'),
(82, 49, 25, 'XC60 DAYNAMIC', 4, 2010, 2011, 3, 0, '', 215000, '', 1, 4, 3, 'Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Computador de bordo, Controle de tração, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Farol xenônio, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Sensor de estacionamento, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica\r\nBLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1277129947.jpg', '1277129948.jpg', '1277129949.jpg', '1287428644.jpg'),
(107, 113, 28, 'DISCOVERY 4 3.0 SE 4X4 V6 TD 4P AUT.', 4, 2010, 2010, 3, 0, '', 0, '', 6, 4, 3, 'BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1279655340.jpg', '1279656390.jpg', '1279655850.jpg', '1279655343.jpg'),
(88, 93, 28, 'FREELANDER 2 S', 4, 2010, 2011, 2, 0, '', 210000, '', 1, 4, 3, 'BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1277230720.jpg', '1277230721.jpg', '1277230722.jpg', '1277230723.jpg'),
(89, 103, 10, 'Jetta Variant', 4, 2010, 2011, 3, 0, '', 141000, '', 1, 4, 3, 'BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1277230817.jpg', '1277230818.jpg', '1277230819.jpg', '1277230820.jpg'),
(90, 125, 39, 'SORENTO 2.4 4X2 S.356 16V 07 LUGARES', 4, 2010, 2011, 3, 0, '', 0, '', 1, 4, 3, 'NOVA SORENTO 2.4 2011!!! MOD S. 356: 7 LUGARES. MOTOR 4 CILINDROS 2.4 COM 174cv E CAMBIO DE 6 MARCHAS COM OPÇÃO DE TROCAS SEQUENCIAIS. COM BANCOS EM COURO, AIR BAGS FRONTAIS, LATERAIS E DE CORTINA, TETO SOLAR PANORAMICO, RODAS ARO 18, FREIOS ABS, XENON, LANTERNAS EM LED, CHAVE \"SMART KEY\" COM BOTÃO DE PARTIDA, MP3 E PILOTO AUTOMATICO COM CONTROLE NO VOLANTE, SOLEIRAS DIANTEIRAS ILUMINADAS, SENSOR DE ESTACIONAMENTO E CAMERA DE RÉ. TEMOS ALGUMAS UNIDADES A PRONTA ENTREGA,BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60 VEZES, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1277231316.jpg', '1277231317.jpg', '1277231318.jpg', ''),
(91, 124, 39, 'SORENTO 2.4 4X2 S.253 16V 05 LUGARES', 4, 2010, 2011, 3, 0, '', 145000, '', 1, 4, 3, 'COD. S253: 5 LUGARES. MOTOR 2.4 COM 174 cv E CAMBIO DE 6 MARCHAS COM OPÇÃO DE TROCAS SEQUENCIAIS. COM AIR BAG DUPLO, FREIOS ABS, BANCOS EM COURO, SENSOR DE ESTACIONAMENTO, RODAS ARO 18 E PILOTO AUTOMATICO.BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60 VEZES, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1277231545.jpg', '1277231546.jpg', '1277983865.jpg', '1277983460.jpg'),
(92, 68, 7, 'iX35 2011 COD. 595', 4, 2010, 2011, 3, 0, '', 166000, '', 1, 4, 3, 'LANÇAMENTO MUNDIAL HYUNDAI,COD.G595 DISPOMOS DE TODAS AS CORES E VERSÕES PRONTA ENTREGA, ACEITAMOS SEU VICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X, BLINDAGEM AVALLON NIVEL III-A *PRONTA ENTREGA*,COM 04 ANOS DE GARANTIA, VIDROS AGP, MANTAS VERSEDAG, CREDENCIADA PELO GRUPO CAOA REPRESENTANTE HYUNDAI E SUBARU NO BRASIL,TEMOS OUTRAS CORES E MODELOS, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1277560529.jpg', '1277560530.jpg', '1277560531.jpg', '1277560532.jpg'),
(94, 106, 13, 'COROLLA ALTIS 2.0 TIP * PRONTA ENTREGA *', 4, 2010, 2011, 3, 0, '', 129000, '', 1, 4, 3, 'A/C DIGITAL AUT, REGULAGEM ELÉTRICA DO BANCO DO MOTORISTA, CD PLAYER COM DISQUETEIRA PARA 6 CD´S E COMANDO NO VOLANTE, COMPUTADOR DE BORDO COM COMANDO NO VOLANTE, ACENDIMENTO AUT DOS FARÓIS, FARÓIS DE XENON, FARÓIS DE NEBLINA, LIMPADOR DOS FARÓIS, REGULAGEM DO VOLANTE, RETROVISORES RETRÁTEIS ELETRICAMENTE COM INDICAÇÃO DE DIREÇÃO, PILOTO AUT, TRIO ELÉTRICO, AIR BAG DUPLO FRONTAL E LATERAL, BANCOS EM COURO, FREIOS A DISCO COM ABS E EBD, RODAS DE LIGA ARO 16’, CÂMBIO AUTOMÁTICO, MOTOR 2.0 DUAL VVT-i FLEX CAMBIO SEQUENCIAL e PADLLE SHIFT.\r\nBLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA, MANTAS VERSEDAG, PRONTA ENTREGA, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1278087808.jpg', '1278087809.jpg', '1278087810.jpg', '1278087811.jpg'),
(203, 16, 7, 'TUCSON GLS 2.7 V6 *BLINDADA*', 4, 2007, 2007, 2, 50000, '', 68000, 'N', 1, 2, 3, 'VEICULO E BLINDAGEM IMPECAVEIS, 04 PNEUS NOVOS, BLINDAGEM REVISADA, VEICULO REVISADO, SEM DETALHES, BLINDAGEM HI-TECH NIVEL III-A, MOTOR 2.7 V6 185CV 4X4, BANCO DE COURO, BLUETOOF, SENSOR DE RÉ, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '1295096656.jpg', '1295096657.jpg', '', ''),
(105, 13, 7, 'I30 2.0 MPI 16V AUT. * PRONTA ENTREGA *', 4, 2010, 2011, 3, 0, '', 108000, '', 1, 4, 3, 'PRONTA ENTREGA CODIGO GZ63 SEM TETO.Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Rádio e CD Player, Desembaçador traseiro, Encosto de cabeça traseiro, Freio ABS, Limpador traseiro, Rádio, Retrovisores elétricos, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica\r\nBLINDAGEM AVALLON NIVEL III-A, CREDENCIADA PELO GRUPO CAOA REPRESENTANTE HYUNDAI E SUBARU NO BRASIL, COM 04 ANOS DE GARANTIA, PRONTA ENTREGA, ACEITAMOS SEU USADO NA TROCA, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR.', '2010-04-19', 'S', '1279026417.jpg', '1279026418.jpg', '1279026419.jpg', '1279026420.jpg'),
(123, 16, 7, 'TUCSON GL 2.0 AUTOMATICA *BLINDADA*', 4, 2005, 2006, 3, 43000, 'DSK5191', 58000, '', 1, 2, 3, 'VEICULO REVISADO PELA AVALLON BLINDAGENS COM GARANTIA, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X, Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Desembaçador traseiro, Encosto de cabeça traseiro, Limpador traseiro, Rádio, Retrovisores elétricos, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica\r\nBLINDADO HI-TECH NIVEL III-A, SEM DELAMINAÇÃO, SEM DETALHE, ACEITAMOS SEU USADO NA TROCA, NOSSOS VEICULOS SÃO PERICIADOS E ACOMPANHAM LAUDO DA VISTORIA BRASIL, QUALIDDE E SEGURANÇA EM UM SO LUGAR.', '2010-04-19', 'S', '1294855384.jpg', '1283184532.jpg', '1294855385.jpg', '1283184609.jpg'),
(198, 33, 9, 'EDGE LIMITED ', 4, 2010, 2011, 3, 0, '', 198000, 'N', 1, 2, 3, 'VEICULO OKM TOP,COM TETO SOLAR, RODAS 20, BLINDAGEM AVALLON  NIVEL III-A VIDROS 17mm, MANTAS VERSEIDAG COM 05 DE GARANTIA, ACEITAMOS SEU USADO NA TROCA, FINANCIAMOS EM ATE 60X INCLUINDO A BLINDAGEM.', '2010-04-19', 'S', '', '', '', ''),
(194, 152, 10, 'PASSAT 2.0 TURBO TIPTRONIC', 4, 2006, 2007, 2, 55000, 'DYE0304', 69000, 'N', 1, 3, 3, 'VEICULO COM QUALIDADE R2 IMPORT, REVISADO PELA AVALLON BLINDAGENS ESPECIAIS, ACEITAMOS SEU VEICULO NA TROCA, FINANCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '', '', '', ''),
(145, 68, 7, 'iX35 2011 COD.596', 4, 2010, 2011, 3, 0, '', 145000, '', 1, 2, 3, 'CODIGO G596', '2010-04-19', 'S', '1284123662.jpg', '1284123663.jpg', '1284123664.jpg', '1284123665.jpg'),
(186, 90, 27, 'PAJERO TR4 2.0', 4, 2006, 2006, 3, 40, 'FMP7700', 54000, 'N', 1, 2, 3, 'VEICULO UNICO DONO, REVISADA PELA AVALLON BLINDAGENS E QUALIDADE R2 IMPORT.\r\nACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO FINANCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '', '', '', ''),
(187, 58, 27, 'PAJERO SPORT HPE', 4, 2006, 2007, 3, 53000, 'DQB7141', 66000, '', 1, 2, 3, 'VEICULO COM QUALIDADE R2 IMPORT, REVISADO PELA AVALLON BLIDAGENS ESPECIAIS, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '1292524365.jpg', '1292524366.jpg', '1292524367.jpg', '1292524368.jpg'),
(179, 150, 17, '540i Protection', 4, 1999, 1999, 3, 89000, 'CTA3707', 39000, '', 1, 2, 3, 'VEICULO EM EXCELENTE ESTADO, SEM DELAMINAÇÃO VIDROS ISOCLIMA BLINDADO DE FABRICA, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS.', '2010-04-19', 'S', '1295095027.jpg', '1295095028.jpg', '1295095029.jpg', '1295095030.jpg'),
(181, 147, 32, 'JOURNEY STX', 4, 2008, 2009, 1, 5000, 'EEY7557', 114900, '', 1, 2, 3, 'ESTADO DE OKM, IMPECAVEL, VEICULO PARA CLIENTES EXIGENTES COM QUALIDADE, VEICULO COM PROCEDENCIA R2 IMPORT REVISADO PELA AVALLON  BLINDAGENS ESPECIAIS, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '1291659824.jpg', '1291659825.jpg', '1291659826.jpg', '1291659827.jpg'),
(182, 157, 12, 'FIT EX AUTOMATICO', 4, 2005, 2005, 2, 51, 'ERM0728', 39000, 'N', 1, 2, 3, 'VEICULO TODO REVISADO COM PROCEDENCIA R2 IMPORT, REVISADO PEL AVALLON BLINDAGENS ESPECIAIS, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO, FINNCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '', '', '', ''),
(174, 45, 13, 'COROLLA XEI AUTOMATICO FLEX', 4, 2008, 2009, 2, 22000, 'DZI9351', 86000, '', 3, 2, 3, 'VEICULO COM GARANTIA, REVISADO, SEM DELAMINAÇÃO, UNICO DONO,TODAS AS REVISÕES FEITAS, ACEITAMOS SEU VEICULO USADO NA TROCA, FINANCIAMOS EM ATÉ 60X SEM ENTRADA, FAZEMOS TROCA COM TROCO.', '2010-04-19', 'S', '1289501862.jpg', '1289501863.jpg', '1289501864.jpg', '1289501865.jpg'),
(171, 143, 7, 'SONATA *IMPERDIVEL BLINDADO *', 4, 2010, 2011, 2, 0, '', 163000, 'N', 1, 4, 3, 'VENHA CONHECER O MAIS NOVO LANÇAMENTO DA HYUNDAI NA R2 IMPORT, DISPOMOS DE VEICULOS EM PROCESSO DE BLINDAGEM PARA ATENDE-LO, ACEITAMNOS SEU CARRO USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS ATE 60X, MOTOR 2.4 CVVT 16V 178CV, CAPACIDADE PORTA MALAS 464 LTS, EQUIPADO COM: AR CONDICIONADO, DIREÇÃO ELETRICA, RODAS DE LIGA LEVE ARO18, CAMBIO AUTOMATICO DE 06 MARCHAS E COMANDO BORBOLETA, CD MP3 COM IPOD/USB E MAGAZINE PARA 06 DISCOS, BANCOS EM COURO COM REGULAGEM ELETRICA E AQUECIMENTO, FREIOS ABS, EBD/BAS, CONTROLE DE ESTABILIDADE ELETRONICO, 10 AIR BAGS, FAROIS DE NEBLINA, VIDROS E TRAVAS ELETRICAS, ALARME COM TELECOMANDO DE ABERTURA E FECHAMENTO DAS PORTAS, BOTÃO DE PARTIDA ELETRICO COM SENSOR DE PRESENÇA, ACENDIMENTO AUTOMATICO DOS FAROIS, RETROVISORES COM COMANDO E RECOLHIMENTO ELETRICOS, PILOTO AUTOMATICO E COMANDO DE SOM NO VOLANTE, ABERTURA ELETRICA DO PORTA MALAS, COMPUTADOR DE BORDO, SENSOR DE ESTACIONAMENTO, TETO SOLAR PANORAMICO, FAROIS DE NEBLINA XENON E MEMORIAS DE BANCOS', '2010-04-19', 'S', '1287425831.jpg', '1287425832.jpg', '1287425833.jpg', '1287425834.jpg'),
(192, 153, 13, 'HILUX SW4 3.0 TURBO', 4, 2005, 2006, 3, 84, 'ENN8686', 99000, '', 6, 2, 3, 'VEICULO COM QUALIDADE R2 IMPORT, REVISADA AVALLON BLINDAGENS, VEICULO IMPECAVEL, ACEITAMOS SEU VEICULO COMO PARTE DE PAGAMENTO,FINANCIAMOS EM ATÉ 60X.', '2010-04-19', 'S', '1292523314.jpg', '', '', ''),
(196, 14, 7, 'Santa Fe 3.5 V6 24V 285CV 05 LUGARES', 4, 2010, 2011, 3, 0, '', 168000, '', 1, 2, 3, '* CAMERA DE RÉ, BOTÃO DE START, CHAVE COM SENSOR DE PRESENÇA * Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Desembaçador traseiro, Freio ABS, Limpador traseiro, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica. * BLINDAGEM AVALLON NIVEL III-A VIDROS AGP e MANTAS VERSEDAG, *PRONTA ENTREGA*,COM 04 ANOS DE GARANTIA, CREDENCIADA PELO GRUPO CAOA REPRESENTANTE HYUNDAI E SUBARU NO BRASIL,TEMOS OUTRAS CORES E MODELOS, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1292525478.jpg', '1292525479.jpg', '1292525480.jpg', '1292525481.jpg'),
(201, 50, 17, 'X1 118I ******** PRONTA ENTREGA******', 4, 2010, 2011, 3, 999, 'BMW8888', 185000, 'N', 1, 2, 3, 'VEICULO PRONTA ENTREGA, COM XENON, KIT MULTI MIDIA ( TV DIGITAL,DVD,GPS,BLUETOOF), SENSOR DE RÉ,LICENCIADA FINAL DE PLACA 8, BLINDAGEM AVALLON NIVEL-IIIA COM VIDROS AGP STEEL GLASS 17MM COM 05 ANOS DE GARANTIA, AR DIGITAL, TARVAS ELETRICAS, ALARME, RODAS, COURO, TRAVAS VIDROS E RETROVISORES ELETRICOS, DIREÇÃO ESCAMOTIAVEL, REGULAGEM DE ALTURA DOS BANCOS, FAROIS DE NEBLINA, FREIOS ABS, CONTROLE DE ESTABILIDADE, OPORTUNIDADE!!!!!!, FINANCIAMOS EM ATÉ 60X, ACEITAMOS SEU VEICULO USADO DE QUALQUER MARCA COMO PARTE DE PAGAMENTO.\r\n', '2010-04-19', 'S', '1294494154.jpg', '1294494155.jpg', '1294494156.jpg', '1294494157.jpg'),
(202, 93, 28, 'FREELANDER SE BLINDADA', 4, 2010, 2011, 2, 0, '', 192000, 'N', 1, 2, 3, 'BLINDAGEM AVALLON NIVEL III-A, COM 04 ANOS DE GARANTIA,VIDROS AGP, MANTAS VERSEDAG, TEMOS OUTRAS CORES E MODELOS, ACEITAMOS SEU USADO COMO PARTE DE PAGAMENTO, FINANCIAMOS EM ATE 60X, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR, *VISITE NOSSO SHOW ROOM*.', '2010-04-19', 'S', '1294852418.jpg', '', '', ''),
(161, 140, 41, 'INFINIT FX35 awd', 4, 2006, 2006, 3, 0, 'EGS2907', 135000, '', 1, 2, 3, 'Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Computador de bordo, Desembaçador traseiro, Freio ABS, Limpador traseiro, Farol xenônio, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Sensor de chuva, Teto solar, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica\r\nIGUAL A OKM, UNICO DONO, ACEITAMOS SEU USADO NA TROCA, QUALIDADE E SEGURANÇA EM UM SÓ LUGAR', '2010-04-19', 'S', '1286222182.jpg', '1286222183.jpg', '1286222184.jpg', '1286222185.jpg'),
(163, 21, 8, 'OUTBACK', 4, 2010, 2010, 8, 0, '', 200000, '', 1, 2, 3, 'Air bag duplo, Alarme, Ar condicionado, Ar quente, Banco do motorista com ajuste de altura, Bancos em couro, Rádio e CD Player, Desembaçador traseiro, Freio ABS, Limpador traseiro, Farol xenônio, Controle automático de velocidade, Rádio, Retrovisores elétricos, Rodas de liga leve, Sensor de estacionamento, Teto solar, Travas elétricas, Vidros elétricos, Volante com regulagem de altura, Porta-copos, Direção hidráulica\r\nBLINDADO AVALLON NIVEL III=A, CREDENCIADA PELO GRUPO CAOA REPRESENTANTE HYUNDAI E SUBARU NO BRASIL, COM 05 ANOS DE GARANTIA, ACEITAMOS SEU USADO NA TROCA, QUALIDADE SEGURANÇA EM UM SÓ LUGAR', '2010-04-19', 'S', '1286222989.jpg', '1286222990.jpg', '1286222991.jpg', '1286222992.jpg'),
(164, 67, 32, 'JOURNEY SE', 4, 2010, 2010, 3, 0, '', 125000, '', 1, 2, 3, 'VEICULO 0KM, 2010/2010 NAS CORES PRETA E PRATA, VIDROS AGP 21MM, MANTAS ALEMÃ VERSEIDAG, VEICULO COM 04 ANOS DE GARANTIA, ACEITAMOS SEU VEICULO NA TROCA, FINANCIAMOS EM ATÉ 60X SEM ENTRADA INCLUSIVE A BLINDAGEM, APROVEITE A OPORTUNIDADE E FAÇA SUA RESERVA, MANTENHA SUA FAMILIA SEGURA, USE AVALLON BLINDAGENS ESPECIAIS.', '2010-04-19', 'S', '1291315467.jpg', '1291315468.jpg', '1291315469.jpg', '1291315470.jpg'),
(204, 124, 39, 'teste 123', 2, 2010, 2010, 5, 0, 'ddd-0009', 120000, 'N', 2, 4, 1, 'fdasfasfasfasfasdsdfas', '2010-04-19', 'S', '', '', '', ''),
(205, 8, 7, 'AZERA * BLINDADO *', 4, 2011, 2011, 3, 0, '', 138000, 'N', 1, 2, 3, 'MARQUE UMA VISITA EM NOSSA FÁBRICA COM UM DE NOSSOS CONSULTORES E CONHEÇA TODA A TECNOLOGIA E SEGURANÇA QUE A BLINDAGEM AVALLON OFERECE, OU VENHA VISITAR NOSSO SHOW ROOM E CONHEÇA TODA A VARIEDADE DE MARCAS E MODELOS QUE DISPOMOS. DISPONIVEL EM NOSSO SHOOW ROOM A PRONTA ENTREGA, BLINDAGEM NIVEL III-A, VIDROS AGP 21mmn COM 04 ANOS DE GARANTIA, MANTAS ALEMÃ VERSEIDAG, ACEITAMOS SEU VEICULO NA TROCA, FINANCIAMOS EM ATÉ 60X. DISPOMOS DE OUTRAS VERSÕES E CORES, PRAZO DE ENTREGA MEDIO DE 35 DIAS PARA VEICULOS EM PRODUÇÃO, CONSULTE-NOS!!!!! ', '2010-04-19', 'S', '1314792789.jpg', '1314792790.jpg', '1314792791.jpg', '1314792792.jpg'),
(206, 0, 7, 'santa fe', 4, 2011, 2012, 2, 0, '', 150000, 'N', 1, 2, 3, 'MARQUE UMA VISITA EM NOSSA FÁBRICA COM UM DE NOSSOS CONSULTORES E CONHEÇA TODA A TECNOLOGIA E SEGURANÇA QUE A BLINDAGEM AVALLON OFERECE, OU VENHA VISITAR NOSSO SHOW ROOM E CONHEÇA TODA A VARIEDADE DE MARCAS E MODELOS QUE DISPOMOS. DISPONIVEL EM NOSSO SHOOW ROOM A PRONTA ENTREGA, BLINDAGEM NIVEL III-A, VIDROS AGP 21mmn COM 04 ANOS DE GARANTIA, MANTAS ALEMÃ VERSEIDAG, ACEITAMOS SEU VEICULO NA TROCA, FINANCIAMOS EM ATÉ 60X. DISPOMOS DE OUTRAS VERSÕES E CORES, PRAZO DE ENTREGA MEDIO DE 35 DIAS PARA VEICULOS EM PRODUÇÃO, CONSULTE-NOS!!!!! ', '2010-04-19', 'S', '1336568816.jpg', '', '', ''),
(207, 0, 7, 'santa fe', 4, 2011, 2012, 2, 0, '', 150000, 'N', 1, 2, 3, 'MARQUE UMA VISITA EM NOSSA FÁBRICA COM UM DE NOSSOS CONSULTORES E CONHEÇA TODA A TECNOLOGIA E SEGURANÇA QUE A BLINDAGEM AVALLON OFERECE, OU VENHA VISITAR NOSSO SHOW ROOM E CONHEÇA TODA A VARIEDADE DE MARCAS E MODELOS QUE DISPOMOS. DISPONIVEL EM NOSSO SHOOW ROOM A PRONTA ENTREGA, BLINDAGEM NIVEL III-A, VIDROS AGP 21mmn COM 04 ANOS DE GARANTIA, MANTAS ALEMÃ VERSEIDAG, ACEITAMOS SEU VEICULO NA TROCA, FINANCIAMOS EM ATÉ 60X. DISPOMOS DE OUTRAS VERSÕES E CORES, PRAZO DE ENTREGA MEDIO DE 35 DIAS PARA VEICULOS EM PRODUÇÃO, CONSULTE-NOS!!!!! ', '2010-04-19', 'S', '1336568816.jpg', '', '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`numero`);

--
-- Índices para tabela `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `cambio`
--
ALTER TABLE `cambio`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `combust`
--
ALTER TABLE `combust`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `cores`
--
ALTER TABLE `cores`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `enqueteresp`
--
ALTER TABLE `enqueteresp`
  ADD PRIMARY KEY (`id_resp`);

--
-- Índices para tabela `enquetes`
--
ALTER TABLE `enquetes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `nivelblind`
--
ALTER TABLE `nivelblind`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD UNIQUE KEY `cl_codcli` (`cl_codcli`);

--
-- Índices para tabela `tipoblind`
--
ALTER TABLE `tipoblind`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`codigovei`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT de tabela `admins`
--
ALTER TABLE `admins`
  MODIFY `codigo` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cambio`
--
ALTER TABLE `cambio`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `combust`
--
ALTER TABLE `combust`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cores`
--
ALTER TABLE `cores`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `enqueteresp`
--
ALTER TABLE `enqueteresp`
  MODIFY `id_resp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `enquetes`
--
ALTER TABLE `enquetes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `modelos`
--
ALTER TABLE `modelos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de tabela `nivelblind`
--
ALTER TABLE `nivelblind`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `cl_codcli` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `tipoblind`
--
ALTER TABLE `tipoblind`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `codigovei` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
