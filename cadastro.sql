-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/06/2025 às 01:37
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `nome` varchar(120) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `nome_loja` varchar(130) NOT NULL,
  `descricao_loja` varchar(200) NOT NULL,
  `endereco_loja` varchar(150) NOT NULL,
  `banco` varchar(100) NOT NULL,
  `agencia` varchar(20) NOT NULL,
  `conta` varchar(20) NOT NULL,
  `tipo_conta` enum('corrente','poupanca','pagamento') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendedores`
--

INSERT INTO `vendedores` (`nome`, `email`, `telefone`, `senha`, `nome_loja`, `descricao_loja`, `endereco_loja`, `banco`, `agencia`, `conta`, `tipo_conta`) VALUES
('Juan Matheus', 'juan@gmail.com', '88821212121', '123123', 'Pipa Combate', 'pipas e linhas', 'rua 3', 'nubank', '0002', '567890', 'poupanca'),
('iasmin', 'mingau@gmail.com', '88 40028922', '1244587', 'casas bahia', 'vende tudo ', 'rua alecrim 124', 'nubank', '0004', '34525767', 'corrente');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`senha`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
