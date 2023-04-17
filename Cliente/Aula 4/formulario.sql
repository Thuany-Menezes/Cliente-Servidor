-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Abr-2023 às 21:44
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `formulario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `formulario`
--

CREATE TABLE `formulario` (
  `nome_completo` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `endereco` varchar(120) NOT NULL,
  `pontodereferencia` varchar(120) NOT NULL,
  `qtdlixo` varchar(120) NOT NULL,
  `veiculo` varchar(120) NOT NULL,
  `detalhe` varchar(250) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `nomedafoto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `formulario`
--

INSERT INTO `formulario` (`nome_completo`, `email`, `endereco`, `pontodereferencia`, `qtdlixo`, `veiculo`, `detalhe`, `foto`, `nomedafoto`) VALUES
('Thuany', 'alguem@algumemail.com', 'Rua Abóbora, 888, Palhoça', 'Atrás do mercado \"É tudo caro aqui\"', 'Até 50 litros', 'carro pequeno', 'Está tudo espalhado', '', 'limpeza-urbana-comlurb-lixo-rio.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`endereco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
