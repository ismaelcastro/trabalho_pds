-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3325
-- Generation Time: 14-Nov-2017 às 01:24
-- Versão do servidor: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `id_agendamento` int(11) NOT NULL,
  `id_servico` int(11) NOT NULL,
  `id_pet` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `dt_ho_criacao` datetime NOT NULL,
  `dt_ho_agendada` datetime NOT NULL,
  `observacao` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `id_atendimento` int(11) NOT NULL,
  `id_servico` int(11) NOT NULL,
  `id_agendamento` int(11) DEFAULT NULL,
  `id_pet` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `criticidade` char(1) NOT NULL,
  `status` char(1) NOT NULL,
  `valor` double(10,2) NOT NULL,
  `dt_ho_entrada` datetime NOT NULL,
  `dt_ho_saida` datetime NOT NULL,
  `relatorio` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `telefone2` int(11) DEFAULT NULL,
  `ativo` char(1) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `classificacao` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id_estoque` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `status_item` char(1) NOT NULL,
  `vencimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id_fornecedor` int(11) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `telefone2` int(11) DEFAULT NULL,
  `ativo` char(1) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `telefone2` int(11) DEFAULT NULL,
  `ativo` char(1) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cart_trab` varchar(30) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nf_entrada`
--

CREATE TABLE `nf_entrada` (
  `id_nota_entrada` int(11) NOT NULL,
  `chave_acesso` varchar(45) NOT NULL,
  `id_fornecedor` int(11) NOT NULL,
  `data_hora_criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_hora_emissao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valor_total` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nf_entrada_item`
--

CREATE TABLE `nf_entrada_item` (
  `id_nota_entrada` int(11) NOT NULL,
  `num_item` int(11) NOT NULL,
  `numero_item` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `valor_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nf_saida`
--

CREATE TABLE `nf_saida` (
  `id_nota_saida` int(11) NOT NULL,
  `chave_acesso` varchar(45) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `data_hora_criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_hora_emissao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valor_total` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nf_saida_item`
--

CREATE TABLE `nf_saida_item` (
  `id_nota_saida` int(11) NOT NULL,
  `num_item` int(11) NOT NULL,
  `numero_item` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `valor_item` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pet`
--

CREATE TABLE `pet` (
  `id_pet` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` char(1) DEFAULT NULL,
  `id_dono` int(11) NOT NULL,
  `tipo` char(1) NOT NULL,
  `raca` varchar(20) DEFAULT NULL,
  `peso` double(6,3) NOT NULL,
  `porte` char(1) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `dt_nascimento` datetime NOT NULL,
  `tipo_sanguineo` varchar(2) NOT NULL,
  `temperamento` varchar(30) DEFAULT NULL,
  `plano` int(11) DEFAULT NULL,
  `plano_ativo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `ativo` char(1) NOT NULL,
  `tipo` char(1) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `tipo_animal` char(1) NOT NULL,
  `transgenico` char(1) NOT NULL,
  `valor_compra` double(15,2) NOT NULL,
  `valor_venda` double(15,2) NOT NULL,
  `unidade_medida` varchar(3) NOT NULL,
  `quantidade` double(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `id_servico` int(11) NOT NULL,
  `tipo` char(1) NOT NULL,
  `ativo` char(1) DEFAULT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id_venda` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `tipo_venda` char(1) NOT NULL,
  `status_venda` char(1) NOT NULL,
  `forma_pagamento` char(1) NOT NULL,
  `meio_pagamento` char(1) NOT NULL,
  `data_venda` date NOT NULL,
  `hora` time NOT NULL,
  `valor_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_item`
--

CREATE TABLE `venda_item` (
  `id_venda` int(11) NOT NULL,
  `numero_item` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `valor` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`id_agendamento`),
  ADD KEY `fk_agendamento_cliente` (`id_cliente`),
  ADD KEY `fk_agendamento_pet` (`id_pet`),
  ADD KEY `fk_agendamento_funcionario` (`id_funcionario`),
  ADD KEY `fk_agendamento_servico` (`id_servico`);

--
-- Indexes for table `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`id_atendimento`),
  ADD KEY `fk_atendimento_cliente` (`id_cliente`),
  ADD KEY `fk_atendimento_pet` (`id_pet`),
  ADD KEY `fk_atendimento_funcionario` (`id_funcionario`),
  ADD KEY `fk_atendimento_servico` (`id_servico`),
  ADD KEY `fk_atendimento_agendamento` (`id_agendamento`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id_estoque`),
  ADD KEY `fk_produto_estoque` (`id_produto`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Indexes for table `nf_entrada`
--
ALTER TABLE `nf_entrada`
  ADD PRIMARY KEY (`id_nota_entrada`),
  ADD KEY `fk_fornecedor` (`id_fornecedor`);

--
-- Indexes for table `nf_entrada_item`
--
ALTER TABLE `nf_entrada_item`
  ADD PRIMARY KEY (`id_nota_entrada`,`num_item`),
  ADD KEY `fk_produto` (`id_produto`);

--
-- Indexes for table `nf_saida`
--
ALTER TABLE `nf_saida`
  ADD PRIMARY KEY (`id_nota_saida`),
  ADD KEY `fk_cliente_nf_saida` (`id_cliente`);

--
-- Indexes for table `nf_saida_item`
--
ALTER TABLE `nf_saida_item`
  ADD PRIMARY KEY (`id_nota_saida`,`num_item`),
  ADD KEY `fk_produto_saida` (`id_produto`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id_pet`),
  ADD KEY `fk_pet_dono` (`id_dono`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Indexes for table `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id_servico`);

--
-- Indexes for table `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `fk_cliente_venda` (`id_cliente`),
  ADD KEY `fk_funcionario_venda` (`id_funcionario`);

--
-- Indexes for table `venda_item`
--
ALTER TABLE `venda_item`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `fk_produto_venda` (`id_produto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendamento`
--
ALTER TABLE `agendamento`
  MODIFY `id_agendamento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `id_atendimento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id_estoque` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nf_entrada`
--
ALTER TABLE `nf_entrada`
  MODIFY `id_nota_entrada` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nf_saida`
--
ALTER TABLE `nf_saida`
  MODIFY `id_nota_saida` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `id_pet` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servico`
--
ALTER TABLE `servico`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `venda`
--
ALTER TABLE `venda`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `venda_item`
--
ALTER TABLE `venda_item`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD CONSTRAINT `fk_agendamento_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_agendamento_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`),
  ADD CONSTRAINT `fk_agendamento_pet` FOREIGN KEY (`id_pet`) REFERENCES `pet` (`id_pet`),
  ADD CONSTRAINT `fk_agendamento_servico` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`);

--
-- Limitadores para a tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `fk_atendimento_agendamento` FOREIGN KEY (`id_agendamento`) REFERENCES `agendamento` (`id_agendamento`),
  ADD CONSTRAINT `fk_atendimento_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_atendimento_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`),
  ADD CONSTRAINT `fk_atendimento_pet` FOREIGN KEY (`id_pet`) REFERENCES `pet` (`id_pet`),
  ADD CONSTRAINT `fk_atendimento_servico` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`);

--
-- Limitadores para a tabela `estoque`
--
ALTER TABLE `estoque`
  ADD CONSTRAINT `fk_produto_estoque` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`);

--
-- Limitadores para a tabela `nf_entrada`
--
ALTER TABLE `nf_entrada`
  ADD CONSTRAINT `fk_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`);

--
-- Limitadores para a tabela `nf_entrada_item`
--
ALTER TABLE `nf_entrada_item`
  ADD CONSTRAINT `fk_nota` FOREIGN KEY (`id_nota_entrada`) REFERENCES `nf_entrada` (`id_nota_entrada`),
  ADD CONSTRAINT `fk_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`);

--
-- Limitadores para a tabela `nf_saida`
--
ALTER TABLE `nf_saida`
  ADD CONSTRAINT `fk_cliente_nf_saida` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Limitadores para a tabela `nf_saida_item`
--
ALTER TABLE `nf_saida_item`
  ADD CONSTRAINT `fk_nota_saida` FOREIGN KEY (`id_nota_saida`) REFERENCES `nf_saida` (`id_nota_saida`),
  ADD CONSTRAINT `fk_produto_saida` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`);

--
-- Limitadores para a tabela `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `fk_pet_dono` FOREIGN KEY (`id_dono`) REFERENCES `cliente` (`id_cliente`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `fk_cliente_venda` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_funcionario_venda` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`),
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Limitadores para a tabela `venda_item`
--
ALTER TABLE `venda_item`
  ADD CONSTRAINT `fk_produto_venda` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`),
  ADD CONSTRAINT `fk_venda_item` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id_venda`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
