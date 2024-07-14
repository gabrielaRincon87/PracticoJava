CREATE DATABASE  IF NOT EXISTS `trabajopracticojava` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trabajopracticojava`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trabajopracticojava
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `edad` int NOT NULL,
  `id_pais` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'azul',9,10,'azul@gmail.com','azul','https://th.bing.com/th/id/R.481da3557c38dcffa7c75aa6e581aefb?rik=eAq63t1s4P%2f9Wg&riu=http%3a%2f%2fpurepng.com%2fpublic%2fuploads%2flarge%2fpurepng.com-pokemonpokemonpocket-monsterspokemon-franchisefictional-speciesone-pokemonmany-pokemonone-pikachu-1701527786820ovzo0.png&ehk=3hVjYmbdhjjwGbcCLO%2bxljHEMQ%2fXujsDXOuOmWMRTCY%3d&risl=&pid=ImgRaw&r=0'),(2,'gaby',6,9,'gabriela.rincon87@gmail.com','1234','https://img.freepik.com/foto-gratis/lindo-conejito-dibujos-animados-generado-ai_23-2150288883.jpg?t=st=1720803791~exp=1720804391~hmac=d975ec465c59ca51ccc8daeb235a81463dee8febacb1d995e4d9057806d232b7'),(3,'sofi',5,9,'sofi@gmail.com','123','https://img.freepik.com/foto-gratis/lindo-conejito-dibujos-animados-generado-ai_23-2150288883.jpg?t=st=1720803791~exp=1720804391~hmac=d975ec465c59ca51ccc8daeb235a81463dee8febacb1d995e4d9057806d232b7'),(4,'Denise',5,9,'denise@gmail.com','denise','https://th.bing.com/th/id/OIP.H4Jcez-AHt9xSJ2VDtx7aAHaI-?rs=1&pid=ImgDetMain'),(5,'Sofia',5,9,'sofia@gmail.com','sofia','https://usercontent2.hubstatic.com/6515091_f260.jpg'),(6,'Isabella',7,9,'isabella@gmail.com','Isabella','https://wallpapercave.com/wp/7pf2nx1.png'),(7,'Rocio',10,9,'rocio@gmail.com','rocio','https://th.bing.com/th/id/R.481da3557c38dcffa7c75aa6e581aefb?rik=eAq63t1s4P%2f9Wg&riu=http%3a%2f%2fpurepng.com%2fpublic%2fuploads%2flarge%2fpurepng.com-pokemonpokemonpocket-monsterspokemon-franchisefictional-speciesone-pokemonmany-pokemonone-pikachu-1701527786820ovzo0.png&ehk=3hVjYmbdhjjwGbcCLO%2bxljHEMQ%2fXujsDXOuOmWMRTCY%3d&risl=&pid=ImgRaw&r=0');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-14 19:08:54
