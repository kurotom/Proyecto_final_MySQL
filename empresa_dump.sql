-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: empresa
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Current Database: `empresa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `empresa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `empresa`;

--
-- Table structure for table `facturacion`
--

DROP TABLE IF EXISTS `facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturacion` (
  `FECHA` year DEFAULT NULL,
  `VENTA_TOTAL` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacion`
--

LOCK TABLES `facturacion` WRITE;
/*!40000 ALTER TABLE `facturacion` DISABLE KEYS */;
INSERT INTO `facturacion` VALUES (2023,247);
/*!40000 ALTER TABLE `facturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cliente`
--

DROP TABLE IF EXISTS `tb_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cliente` (
  `DNI` varchar(12) NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `DIRECCION` varchar(150) DEFAULT NULL,
  `BARRIO` varchar(50) DEFAULT NULL,
  `CIUDAD` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(2) DEFAULT NULL,
  `CP` varchar(8) DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL,
  `EDAD` smallint DEFAULT '0',
  `SEXO` varchar(1) DEFAULT NULL,
  `LIMITE_CREDITO` float DEFAULT '0',
  `VOLUMEN_COMPRA` float DEFAULT '0',
  `PRIMERA_COMPRA` bit(1) DEFAULT b'0',
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cliente`
--

LOCK TABLES `tb_cliente` WRITE;
/*!40000 ALTER TABLE `tb_cliente` DISABLE KEYS */;
INSERT INTO `tb_cliente` VALUES ('1471156710','Erica Carvajo','Heriberto Frías 1107','Del Valle','Ciudad de México','EM','80012212','1990-01-01',30,'F',170000,245000,_binary '\0'),('19290992743','Rodrigo Villa','Libertadores 65','Héroes','Ciudad de México','EM','21002020','1998-05-30',22,'M',120000,220000,_binary '\0'),('2600586709','Raúl Meneses','Estudiantes 89','Centro','Ciudad de México','EM','22002012','1999-08-13',21,'M',120000,210000,_binary ''),('3623344710','Marcos Rosas','Av. Universidad','Del Valle','Ciudad de México','EM','22002012','1995-01-13',26,'M',110000,220000,_binary ''),('492472718','Jorge Castro','Federal México-Toluca 5690','Locaxco','Ciudad de México','EM','22012002','1994-01-19',26,'M',75000,95000,_binary ''),('50534475787','Abel Pintos','Carr. México-Toluca 1499','Cuajimalpa','Ciudad de México','EM','22000212','1995-01-11',25,'M',170000,260000,_binary '\0'),('5576228758','Patricia Olivera','Pachuca 75','Condesa','Ciudad de México','EM','88192029','1995-01-14',25,'F',70000,160000,_binary ''),('5648641702','Paolo Mendez','Martires de Tacubaya 65','Héroes de Padierna','Ciudad de México','EM','21002020','1991-01-30',29,'M',120000,220000,_binary '\0'),('5840119709','Gabriel Roca','Eje Central Lázaro Cárdenas 911','Del Valle','Ciudad de México','EM','80010221','1985-01-16',36,'M',140000,210000,_binary ''),('7771579779','Marcelo Perez','F.C. de Cuernavaca 13','Carola','Ciudad de México','EM','88202912','1992-01-25',29,'M',120000,200000,_binary ''),('8502682733','Luis Silva','Prol. 16 de Septiembre 1156','Contadero','Ciudad de México','EM','82122020','1995-01-07',25,'M',110000,190000,_binary '\0'),('8719655770','Carlos Santivañez','Calz. del Hueso 363','Floresta Coyoacán','Ciudad de México','EM','81192002','1983-01-20',37,'M',200000,240000,_binary '\0'),('9275760794','Alberto Rodriguez','Circunvalación Oblatos 690','Oblatos','Guadalajara','JC','44700000','1991-12-28',26,'M',75000,95000,_binary ''),('9283760794','Edson Calisaya','Sta Úrsula Xitla','Barrio del Niño Jesús','Ciudad de México','EM','22002002','1995-01-07',25,'M',150000,250000,_binary ''),('94387575700','María Jimenez','Av. Libertadores 457','Barragán Hernández','Guadalajara','JC','44469000','1995-05-13',26,'F',120000,300000,_binary ''),('95939180787','Ximena Gómez','Jaguares 822','Alcalde Barranquitas','Guadalajara','JC','44270000','1992-01-05',16,'F',90000,18000,_binary '\0');
/*!40000 ALTER TABLE `tb_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_items_vendidos`
--

DROP TABLE IF EXISTS `tb_items_vendidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_items_vendidos` (
  `NUMERO` varchar(5) NOT NULL,
  `CODIGO` varchar(10) NOT NULL,
  `CANTIDAD` int DEFAULT '0',
  `PRECIO` float DEFAULT '0',
  PRIMARY KEY (`NUMERO`,`CODIGO`),
  KEY `FK_CODIGO_VENTA` (`CODIGO`),
  CONSTRAINT `FK_CODIGO_VENTA` FOREIGN KEY (`CODIGO`) REFERENCES `tb_productos` (`CODIGO`),
  CONSTRAINT `FK_NUMERO_VENTA` FOREIGN KEY (`NUMERO`) REFERENCES `tb_venta` (`NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_items_vendidos`
--

LOCK TABLES `tb_items_vendidos` WRITE;
/*!40000 ALTER TABLE `tb_items_vendidos` DISABLE KEYS */;
INSERT INTO `tb_items_vendidos` VALUES ('1','1078680',5,5.18),('10','783663',3,7.71),('11','235653',5,3.86),('12','1004327',3,19.51),('13','520380',7,12.01),('14','326779',2,16.51),('15','723457',3,4.91),('16','243083',7,10.51),('17','1002767',7,8.41),('18','290478',7,4.56),('19','290478',3,4.56),('2','1000889',3,6.31),('3','723457',6,4.91),('4','783663',1,7.71),('5','1041119',8,4.9),('6','1051518',5,3.3),('7','1042712',2,4.9),('8','229900',1,4.21),('9','783663',2,7.71);
/*!40000 ALTER TABLE `tb_items_vendidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_productos` (
  `CODIGO` varchar(10) NOT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMANO` varchar(50) DEFAULT NULL,
  `ENVASE` varchar(50) DEFAULT NULL,
  `PRECIO_LISTA` float DEFAULT '0',
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` VALUES ('1000801','Sabor del Mar','Naranja','700 ml','Botella de Vidrio',3.25),('1000889','Sabor da Montaña','Uva','700 ml','Botella de Vidrio',6.31),('1002334','Línea Citrus','Lima/Limón','1 Litro','Botella PET',7),('1002767','Vida del Campo','Cereza/Manzana','700 ml','Botella de Vidrio',8.41),('1004327','Vida del Campo','Sandía','1,5 Litros','Botella PET',19.51),('1013793','Vida del Campo','Cereza/Manzana','2 Litros','Botella PET',24.01),('1022450','Festival de Sabores','Asái','2 Litros','Botella PET',38.01),('1037797','Clean','Naranja','2 Litros','Botella PET',16.01),('1040107','Light','Sandía','350 ml','Lata',4.56),('1041119','Línea Citrus','Lima/Limón','700 ml','Botella de Vidrio',4.9),('1042712','Línea Citrus','Limón','700 ml','Botella de Vidrio',4.9),('1051518','Verano','Limón','470 ml','Botella de Vidrio',3.3),('1078680','Verano','Mango','470 ml','Botella de Vidrio',5.18),('1086543','Refrescante','Mango','1 Litro','Botella PET',11.01),('1088126','Línea Citrus','Limón','1 Litro','Botella PET',7),('1096818','Refrescante','Mango','700 ml','Botella de Vidrio',7.71),('1101035','Refrescante','Frutilla/Limón','1 Litro','Botella PET',9.01),('229900','Pedazos de Frutas','Manzana','350 ml','Lata',4.21),('231776','Festival de Sabores','Asaí','700 ml','Botella de Vidrio',13.31),('235653','Verano','Mango','350 ml','Lata',3.86),('243083','Festival de Sabores','Maracuyá','1,5 Litros','Botella PET',10.51),('290478','Vida del Campo','Sandía','350 ml','Lata',4.56),('326779','Refrescante','Mango','1,5 Litros','Botella PET',16.51),('394479','Sabor da Montaña','Cereza','700 ml','Botella de Vidrio',8.41),('479745','Clean','Naranja','470 ml','Botella de Vidrio',3.77),('520380','Pedazos de Frutas','Manzana','1 Litro','Botella PET',12.01),('544931','Verano','Limón','350 ml','Lata',2.46),('695594','Festival de Sabores','Asaí','1,5 Litros','Botella PET',28.51),('723457','Festival de Sabores','Maracuyá','700 ml','Botella de Vidrio',4.91),('746596','Light','Sandía','1,5 Litros','Botella PET',19.51),('773912','Clean','Naranja','1 Litro','Botella PET',8.01),('783663','Sabor da Montaña','Frutilla','700 ml','Botella de Vidrio',7.71),('788975','Pedazos de Frutas','Manzana','1,5 Litros','Botella PET',18.01),('812829','Clean','Naranja','350 ml','Lata',2.81),('826490','Refrescante','Frutilla/Limón','700 ml','Botella de Vidrio',6.31),('838819','Clean','Naranja','1,5 Litros','Botella PET',12.01);
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_vendedor`
--

DROP TABLE IF EXISTS `tb_vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_vendedor` (
  `MATRICULA` varchar(10) NOT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  `COMISION` float DEFAULT '0',
  `FECHA_ADMISION` date DEFAULT NULL,
  `VACACIONES` bit(1) DEFAULT b'0',
  `BARRIO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MATRICULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_vendedor`
--

LOCK TABLES `tb_vendedor` WRITE;
/*!40000 ALTER TABLE `tb_vendedor` DISABLE KEYS */;
INSERT INTO `tb_vendedor` VALUES ('00235','Miguel Pavón Silva',0.208,'2014-08-15',_binary '\0','Condesa'),('00236','Claudia Morales',0.208,'2013-09-17',_binary '','Del Valle'),('00237','Concepción Martinez',0.286,'2017-03-18',_binary '','Contadero'),('00238','Patricia Sánchez',0.286,'2016-08-21',_binary '\0','Oblatos');
/*!40000 ALTER TABLE `tb_vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_venta`
--

DROP TABLE IF EXISTS `tb_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_venta` (
  `DNI` varchar(11) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `NUMERO` varchar(5) NOT NULL,
  `IMPUESTO` float DEFAULT '0',
  PRIMARY KEY (`NUMERO`,`MATRICULA`,`DNI`),
  KEY `FK_MATRICULA_VENDEDOR` (`MATRICULA`),
  KEY `FK_DNI_CLIENTE` (`DNI`),
  CONSTRAINT `FK_DNI_CLIENTE` FOREIGN KEY (`DNI`) REFERENCES `tb_cliente` (`DNI`),
  CONSTRAINT `FK_MATRICULA_VENDEDOR` FOREIGN KEY (`MATRICULA`) REFERENCES `tb_vendedor` (`MATRICULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_venta`
--

LOCK TABLES `tb_venta` WRITE;
/*!40000 ALTER TABLE `tb_venta` DISABLE KEYS */;
INSERT INTO `tb_venta` VALUES ('2600586709','00237','2023-03-09','1',0.2),('5648641702','00237','2023-03-09','10',0.6),('3623344710','00236','2023-03-09','11',0.7),('5840119709','00237','2023-03-09','12',0.2),('19290992743','00238','2023-03-09','13',0.3),('8502682733','00237','2023-03-09','14',0.3),('9275760794','00238','2023-03-09','15',0.2),('492472718','00237','2023-03-09','16',0.3),('94387575700','00237','2023-03-09','17',0.8),('50534475787','00238','2023-03-09','18',0.4),('9275760794','00237','2023-03-09','19',0.5),('2600586709','00238','2023-03-09','2',0.8),('9275760794','00237','2023-03-09','3',0.7),('492472718','00237','2023-03-09','4',0.8),('3623344710','00236','2023-03-09','5',0.4),('94387575700','00238','2023-03-09','6',0.7),('94387575700','00238','2023-03-09','7',0.1),('19290992743','00238','2023-03-09','8',0.4),('8719655770','00236','2023-03-09','9',0.7);
/*!40000 ALTER TABLE `tb_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`empresaUser`@`%`*/ /*!50003 TRIGGER `TG_INSERT_VENTA` AFTER INSERT ON `tb_venta` FOR EACH ROW BEGIN
    CALL sp_triggers;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`empresaUser`@`%`*/ /*!50003 TRIGGER `TG_UPDATE_VENTA` AFTER UPDATE ON `tb_venta` FOR EACH ROW BEGIN
    CALL sp_triggers;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`empresaUser`@`%`*/ /*!50003 TRIGGER `TG_DELETE_VENTA` AFTER DELETE ON `tb_venta` FOR EACH ROW BEGIN
    CALL sp_triggers;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10 12:51:54
