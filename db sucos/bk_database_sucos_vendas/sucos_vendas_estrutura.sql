-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sucos_vendas
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `itens_notas_fiscais`
--

DROP TABLE IF EXISTS `itens_notas_fiscais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_notas_fiscais` (
  `NUMERO` int NOT NULL,
  `CODIGO_DO_PRODUTO` varchar(10) NOT NULL,
  `QUANTIDADE` int NOT NULL,
  `PRECO` float NOT NULL,
  PRIMARY KEY (`NUMERO`,`CODIGO_DO_PRODUTO`),
  KEY `CODIGO_DO_PRODUTO` (`CODIGO_DO_PRODUTO`),
  CONSTRAINT `itens_notas_fiscais_ibfk_1` FOREIGN KEY (`CODIGO_DO_PRODUTO`) REFERENCES `tabela_de_produtos` (`CODIGO_DO_PRODUTO`),
  CONSTRAINT `itens_notas_fiscais_ibfk_2` FOREIGN KEY (`NUMERO`) REFERENCES `notas_fiscais` (`NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notas_fiscais`
--

DROP TABLE IF EXISTS `notas_fiscais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_fiscais` (
  `CPF` varchar(11) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `DATA_VENDA` date DEFAULT NULL,
  `NUMERO` int NOT NULL,
  `IMPOSTO` float NOT NULL,
  PRIMARY KEY (`NUMERO`),
  KEY `MATRICULA` (`MATRICULA`),
  KEY `CPF` (`CPF`),
  CONSTRAINT `notas_fiscais_ibfk_1` FOREIGN KEY (`MATRICULA`) REFERENCES `tabela_de_vendedores` (`MATRICULA`),
  CONSTRAINT `notas_fiscais_ibfk_2` FOREIGN KEY (`CPF`) REFERENCES `tabela_de_clientes` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_faturamento`
--

DROP TABLE IF EXISTS `tab_faturamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_faturamento` (
  `data_venda` date DEFAULT NULL,
  `total_venda` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tabela_de_clientes`
--

DROP TABLE IF EXISTS `tabela_de_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_de_clientes` (
  `CPF` varchar(11) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  `ENDERECO_1` varchar(150) DEFAULT NULL,
  `ENDERECO_2` varchar(150) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(2) DEFAULT NULL,
  `CEP` varchar(8) DEFAULT NULL,
  `DATA_DE_NASCIMENTO` date DEFAULT NULL,
  `IDADE` smallint DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `LIMITE_DE_CREDITO` float DEFAULT NULL,
  `VOLUME_DE_COMPRA` float DEFAULT NULL,
  `PRIMEIRA_COMPRA` bit(1) DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tabela_de_produtos`
--

DROP TABLE IF EXISTS `tabela_de_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_de_produtos` (
  `CODIGO_DO_PRODUTO` varchar(10) NOT NULL,
  `NOME_DO_PRODUTO` varchar(50) DEFAULT NULL,
  `EMBALAGEM` varchar(20) DEFAULT NULL,
  `TAMANHO` varchar(10) DEFAULT NULL,
  `SABOR` varchar(20) DEFAULT NULL,
  `PRECO_DE_LISTA` float(10,2) NOT NULL,
  PRIMARY KEY (`CODIGO_DO_PRODUTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tabela_de_vendedores`
--

DROP TABLE IF EXISTS `tabela_de_vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_de_vendedores` (
  `MATRICULA` varchar(5) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  `PERCENTUAL_COMISSAO` float DEFAULT NULL,
  `DATA_ADMISSAO` date DEFAULT NULL,
  `DE_FERIAS` bit(1) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MATRICULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tabloop`
--

DROP TABLE IF EXISTS `tabloop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabloop` (
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `vw_vasco`
--

DROP TABLE IF EXISTS `vw_vasco`;
/*!50001 DROP VIEW IF EXISTS `vw_vasco`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_vasco` AS SELECT 
 1 AS `CPF`,
 1 AS `NOME`,
 1 AS `ENDERECO_1`,
 1 AS `ENDERECO_2`,
 1 AS `BAIRRO`,
 1 AS `CIDADE`,
 1 AS `ESTADO`,
 1 AS `CEP`,
 1 AS `DATA_DE_NASCIMENTO`,
 1 AS `IDADE`,
 1 AS `SEXO`,
 1 AS `LIMITE_DE_CREDITO`,
 1 AS `VOLUME_DE_COMPRA`,
 1 AS `PRIMEIRA_COMPRA`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_vasco`
--

/*!50001 DROP VIEW IF EXISTS `vw_vasco`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vasco` AS select `tabela_de_clientes`.`CPF` AS `CPF`,`tabela_de_clientes`.`NOME` AS `NOME`,`tabela_de_clientes`.`ENDERECO_1` AS `ENDERECO_1`,`tabela_de_clientes`.`ENDERECO_2` AS `ENDERECO_2`,`tabela_de_clientes`.`BAIRRO` AS `BAIRRO`,`tabela_de_clientes`.`CIDADE` AS `CIDADE`,`tabela_de_clientes`.`ESTADO` AS `ESTADO`,`tabela_de_clientes`.`CEP` AS `CEP`,`tabela_de_clientes`.`DATA_DE_NASCIMENTO` AS `DATA_DE_NASCIMENTO`,`tabela_de_clientes`.`IDADE` AS `IDADE`,`tabela_de_clientes`.`SEXO` AS `SEXO`,`tabela_de_clientes`.`LIMITE_DE_CREDITO` AS `LIMITE_DE_CREDITO`,`tabela_de_clientes`.`VOLUME_DE_COMPRA` AS `VOLUME_DE_COMPRA`,`tabela_de_clientes`.`PRIMEIRA_COMPRA` AS `PRIMEIRA_COMPRA` from `tabela_de_clientes` where `tabela_de_clientes`.`BAIRRO` in (select distinct `tabela_de_vendedores`.`BAIRRO` from `tabela_de_vendedores`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-08 10:57:16
