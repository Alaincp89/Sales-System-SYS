-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_sistema_ventas
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_cabecera_venta`
--

DROP TABLE IF EXISTS `tb_cabecera_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cabecera_venta` (
  `idCabeceraVenta` int NOT NULL AUTO_INCREMENT,
  `idCliente` int NOT NULL,
  `valorPagar` double(10,2) NOT NULL,
  `fechaVenta` date NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idCabeceraVenta`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cabecera_venta`
--

LOCK TABLES `tb_cabecera_venta` WRITE;
/*!40000 ALTER TABLE `tb_cabecera_venta` DISABLE KEYS */;
INSERT INTO `tb_cabecera_venta` VALUES (1,1,5000.00,'2023-11-08',1),(2,1,10000.00,'2023-11-08',1),(3,2,3200.00,'2023-11-08',1),(4,3,8200.00,'2023-11-08',1),(5,4,14140.00,'2023-11-10',1),(6,1,2000.00,'2023-11-10',1),(7,4,5000.00,'2023-11-12',1),(8,4,10710.00,'2023-11-12',1),(9,2,3000.00,'2023-11-12',1),(10,2,1800.00,'2023-11-12',1),(11,3,3580.00,'2023-11-12',1),(12,2,16065.00,'2023-11-12',1);
/*!40000 ALTER TABLE `tb_cabecera_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categoria`
--

DROP TABLE IF EXISTS `tb_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categoria`
--

LOCK TABLES `tb_categoria` WRITE;
/*!40000 ALTER TABLE `tb_categoria` DISABLE KEYS */;
INSERT INTO `tb_categoria` VALUES (1,'Lacteos',1),(2,'Verduras',1),(3,'Carnes',1),(4,'Mecatos',1),(5,'Panaderia',1),(6,'Arinas',1),(7,'Productos de Aseo',1),(8,'Embutidos',1),(9,'Viveres',1);
/*!40000 ALTER TABLE `tb_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cliente`
--

DROP TABLE IF EXISTS `tb_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `cedula` varchar(15) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cliente`
--

LOCK TABLES `tb_cliente` WRITE;
/*!40000 ALTER TABLE `tb_cliente` DISABLE KEYS */;
INSERT INTO `tb_cliente` VALUES (1,'Jimmy','Reyes','11245214','3007276880','calle 2 # 3 - 4',1),(2,'Andres','Rodriguez','1010132136','3013463158','cra 10 - 25 - 20',1),(3,'Generico','generico','254616549','548484','54848',1),(4,'Alain','Cervantes','1143424477','3024104012','cra 68#74-80',1);
/*!40000 ALTER TABLE `tb_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalle_venta`
--

DROP TABLE IF EXISTS `tb_detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_detalle_venta` (
  `idDetalleVenta` int NOT NULL AUTO_INCREMENT,
  `idCabeceraVenta` int NOT NULL,
  `idProducto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precioUnitario` double(10,2) NOT NULL,
  `subTotal` double(10,2) NOT NULL,
  `descuento` double(10,2) NOT NULL,
  `iva` double(10,2) NOT NULL,
  `totalPagar` double(10,2) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idDetalleVenta`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalle_venta`
--

LOCK TABLES `tb_detalle_venta` WRITE;
/*!40000 ALTER TABLE `tb_detalle_venta` DISABLE KEYS */;
INSERT INTO `tb_detalle_venta` VALUES (1,1,1,1,5000.00,5000.00,0.00,0.00,5000.00,1),(2,2,2,5,2000.00,10000.00,0.00,0.00,10000.00,1),(3,3,4,800,4.00,3200.00,0.00,0.00,3200.00,1),(4,4,1,1,5000.00,5000.00,0.00,0.00,5000.00,1),(5,4,4,800,4.00,3200.00,0.00,0.00,3200.00,1),(6,5,5,2,3000.00,6000.00,0.00,1140.00,7140.00,1),(7,5,1,1,5000.00,5000.00,0.00,0.00,5000.00,1),(8,5,4,500,4.00,2000.00,0.00,0.00,2000.00,1),(9,6,4,500,4.00,2000.00,0.00,0.00,2000.00,1),(10,7,1,1,5000.00,5000.00,0.00,0.00,5000.00,1),(11,8,6,2,4500.00,9000.00,0.00,1710.00,10710.00,1),(12,9,9,1000,3.00,3000.00,0.00,0.00,3000.00,1),(13,10,7,3,600.00,1800.00,0.00,0.00,1800.00,1),(14,11,4,895,4.00,3580.00,0.00,0.00,3580.00,1),(15,12,6,3,4500.00,13500.00,0.00,2565.00,16065.00,1);
/*!40000 ALTER TABLE `tb_detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_producto`
--

DROP TABLE IF EXISTS `tb_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_producto` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `cantidad` int NOT NULL,
  `precio` double(10,2) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `porcentajeIva` int NOT NULL,
  `idCategoria` int NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_producto`
--

LOCK TABLES `tb_producto` WRITE;
/*!40000 ALTER TABLE `tb_producto` DISABLE KEYS */;
INSERT INTO `tb_producto` VALUES (1,'Leche',146,5000.00,'Colechera x 1100ml',0,1,1),(4,'Zanahoria x 500gr',96505,4.00,'Zanahoria x 500gr',0,2,1),(5,'Detodito Piicante',28,3000.00,'Detodito Piicante',19,4,1),(6,'Pan Bimbo',45,4500.00,'Pan Bimbo',19,5,1),(7,'Huevo x unidad',297,600.00,'Huevo AA',0,1,1),(8,'Arroz Diana x 500gr',200,2200.00,'Arroz Diana x 500gr',19,6,1),(9,'Papa x 500gr',49000,3.00,'Papa x 500gr',0,2,1),(10,'Tomate x 500gr',50000,4.00,'Tomate x 500gr',0,2,1);
/*!40000 ALTER TABLE `tb_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (3,'Joan','Perez','admin','123456','3014783788',1),(4,'Alain','Cervantes','acervantes','1143424477','3024104012',1);
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14  9:04:05
