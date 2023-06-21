-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Jun-2023 às 18:02
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `century21`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestaoleads`
--

CREATE TABLE `gestaoleads` (
  `id` int(11) NOT NULL,
  `lead_nome` varchar(50) NOT NULL,
  `lead_email` varchar(100) NOT NULL,
  `lead_status` enum('Recebida','Sem Resposta','Concluída') NOT NULL,
  `data_hora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historicoleads`
--

CREATE TABLE `historicoleads` (
  `id` int(11) NOT NULL,
  `responsavel` varchar(50) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `contacto` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  `data_hora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `consultor` varchar(100) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `tipo_negocio` enum('Venda','Arrendamento','Trespasse','Permuta') NOT NULL,
  `estado_negocio` enum('Disponível','Reservado','Vendido') NOT NULL,
  `tipo_propriedade` enum('Residencial','Não Residencial') NOT NULL,
  `tipo_imovel` enum('Apartamento','Moradia','Quinta e Herdade','Terreno','Escritório','Loja','Logística','Garagem','Prédio','Imóveis com negócio','Hotel','Terreno Comercial','Prédio Comercial','Arrecadação') NOT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quartos` int(11) DEFAULT NULL,
  `wcs` int(11) DEFAULT NULL,
  `area_bruta` int(11) DEFAULT NULL,
  `area_util` int(11) DEFAULT NULL,
  `estacionamento` int(11) DEFAULT NULL,
  `certificado_energetico` enum('A+','A','B','B-','C','D','E','F') DEFAULT NULL,
  `estado` enum('Novo','Usado','Para Remodelar') DEFAULT NULL,
  `distrito` varchar(50) NOT NULL,
  `concelho` varchar(50) NOT NULL,
  `freguesia` varchar(50) NOT NULL,
  `zona` varchar(50) NOT NULL,
  `titulo_anuncio` varchar(100) NOT NULL,
  `descricao_anuncio` varchar(500) NOT NULL,
  `data_angariacao` date NOT NULL,
  `data_cpcv` date DEFAULT NULL,
  `data_escritura` date DEFAULT NULL,
  `valor_venda` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador`
--

CREATE TABLE `utilizador` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `agencia` varchar(100) NOT NULL,
  `data_contrato` date NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `responsavel` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `contacto` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `site_pessoal` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `gestaoleads`
--
ALTER TABLE `gestaoleads`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `historicoleads`
--
ALTER TABLE `historicoleads`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `gestaoleads`
--
ALTER TABLE `gestaoleads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historicoleads`
--
ALTER TABLE `historicoleads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `utilizador`
--
ALTER TABLE `utilizador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
