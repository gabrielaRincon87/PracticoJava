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
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `id_pais` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `gentilicio_nac` varchar(100) NOT NULL,
  `iso_nac` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Afganistán','AFGANA','AFG'),(2,'Albania','ALBANESA','ALB'),(3,'Alemania','ALEMANA','DEU'),(4,'Andorra','ANDORRANA','AND'),(5,'Angola','ANGOLEÑA','AGO'),(6,'AntiguayBarbuda','ANTIGUANA','ATG'),(7,'ArabiaSaudita','SAUDÍ','SAU'),(8,'Argelia','ARGELINA','DZA'),(9,'Argentina','ARGENTINA','ARG'),(10,'Armenia','ARMENIA','ARM'),(11,'Aruba','ARUBEÑA','ABW'),(12,'Australia','AUSTRALIANA','AUS'),(13,'Austria','AUSTRIACA','AUT'),(14,'Azerbaiyán','AZERBAIYANA','AZE'),(15,'Bahamas','BAHAMEÑA','BHS'),(16,'Bangladés','BANGLADESÍ','BGD'),(17,'Barbados','BARBADENSE','BRB'),(18,'Baréin','BAREINÍ','BHR'),(19,'Bélgica','BELGA','BEL'),(20,'Belice','BELICEÑA','BLZ'),(21,'Benín','BENINÉSA','BEN'),(22,'Bielorrusia','BIELORRUSA','BLR'),(23,'Birmania','BIRMANA','MMR'),(24,'Bolivia','BOLIVIANA','BOL'),(25,'BosniayHerzegovina','BOSNIA','BIH'),(26,'Botsuana','BOTSUANA','BWA'),(27,'Brasil','BRASILEÑA','BRA'),(28,'Brunéi','BRUNEANA','BRN'),(29,'Bulgaria','BÚLGARA','BGR'),(30,'BurkinaFaso','BURKINÉS','BFA'),(31,'Burundi','BURUNDÉSA','BDI'),(32,'Bután','BUTANÉSA','BTN'),(33,'CaboVerde','CABOVERDIANA','CPV'),(34,'Camboya','CAMBOYANA','KHM'),(35,'Camerún','CAMERUNESA','CMR'),(36,'Canadá','CANADIENSE','CAN'),(37,'Catar','CATARÍ','QAT'),(38,'Chad','CHADIANA','TCD'),(39,'Chile','CHILENA','CHL'),(40,'China','CHINA','CHN'),(41,'Chipre','CHIPRIOTA','CYP'),(42,'CiudaddelVaticano','VATICANA','VAT'),(43,'Colombia','COLOMBIANA','COL'),(44,'Comoras','COMORENSE','COM'),(45,'CoreadelNorte','NORCOREANA','PRK'),(46,'CoreadelSur','SURCOREANA','KOR'),(47,'CostadeMarfil','MARFILEÑA','CIV'),(48,'CostaRica','COSTARRICENSE','CRI'),(49,'Croacia','CROATA','HRV'),(50,'Cuba','CUBANA','CUB'),(51,'Dinamarca','DANÉSA','DNK'),(52,'Dominica','DOMINIQUÉS','DMA'),(53,'Ecuador','ECUATORIANA','ECU'),(54,'Egipto','EGIPCIA','EGY'),(55,'ElSalvador','SALVADOREÑA','SLV'),(56,'EmiratosÁrabesUnidos','EMIRATÍ','ARE'),(57,'Eritrea','ERITREA','ERI'),(58,'Eslovaquia','ESLOVACA','SVK'),(59,'Eslovenia','ESLOVENA','SVN'),(60,'España','ESPAÑOLA','ESP'),(61,'EstadosUnidos','ESTADOUNIDENSE','USA'),(62,'Estonia','ESTONIA','EST'),(63,'Etiopía','ETÍOPE','ETH'),(64,'Filipinas','FILIPINA','PHL'),(65,'Finlandia','FINLANDÉSA','FIN'),(66,'Fiyi','FIYIANA','FJI'),(67,'Francia','FRANCÉSA','FRA'),(68,'Gabón','GABONÉSA','GAB'),(69,'Gambia','GAMBIANA','GMB'),(70,'Georgia','GEORGIANA','GEO'),(71,'Gibraltar','GIBRALTAREÑA','GIB'),(72,'Ghana','GHANÉSA','GHA'),(73,'Granada','GRANADINA','GRD'),(74,'Grecia','GRIEGA','GRC'),(75,'Groenlandia','GROENLANDÉSA','GRL'),(76,'Guatemala','GUATEMALTECA','GTM'),(77,'Guineaecuatorial','ECUATOGUINEANA','GNQ'),(78,'Guinea','GUINEANA','GIN'),(79,'Guinea-Bisáu','GUINEANA','GNB'),(80,'Guyana','GUYANESA','GUY'),(81,'Haití','HAITIANA','HTI'),(82,'Honduras','HONDUREÑA','HND'),(83,'Hungría','HÚNGARA','HUN'),(84,'India','HINDÚ','IND'),(85,'Indonesia','INDONESIA','IDN'),(86,'Irak','IRAQUÍ','IRQ'),(87,'Irán','IRANÍ','IRN'),(88,'Irlanda','IRLANDÉSA','IRL'),(89,'Islandia','ISLANDÉSA','ISL'),(90,'IslasCook','COOKIANA','COK'),(91,'IslasMarshall','MARSHALÉSA','MHL'),(92,'IslasSalomón','SALOMONENSE','SLB'),(93,'Israel','ISRAELÍ','ISR'),(94,'Italia','ITALIANA','ITA'),(95,'Jamaica','JAMAIQUINA','JAM'),(96,'Japón','JAPONÉSA','JPN'),(97,'Jordania','JORDANA','JOR'),(98,'Kazajistán','KAZAJA','KAZ'),(99,'Kenia','KENIATA','KEN'),(100,'Kirguistán','KIRGUISA','KGZ'),(101,'Kiribati','KIRIBATIANA','KIR'),(102,'Kuwait','KUWAITÍ','KWT'),(103,'Laos','LAOSIANA','LAO'),(104,'Lesoto','LESOTENSE','LSO'),(105,'Letonia','LETÓNA','LVA'),(106,'Líbano','LIBANÉSA','LBN'),(107,'Liberia','LIBERIANA','LBR'),(108,'Libia','LIBIA','LBY'),(109,'Liechtenstein','LIECHTENSTEINIANA','LIE'),(110,'Lituania','LITUANA','LTU'),(111,'Luxemburgo','LUXEMBURGUÉSA','LUX'),(112,'Madagascar','MALGACHE','MDG'),(113,'Malasia','MALASIA','MYS'),(114,'Malaui','MALAUÍ','MWI'),(115,'Maldivas','MALDIVA','MDV'),(116,'Malí','MALIENSE','MLI'),(117,'Malta','MALTÉSA','MLT'),(118,'Marruecos','MARROQUÍ','MAR'),(119,'Martinica','MARTINIQUÉS','MTQ'),(120,'Mauricio','MAURICIANA','MUS'),(121,'Mauritania','MAURITANA','MRT'),(122,'México','MEXICANA','MEX'),(123,'Micronesia','MICRONESIA','FSM'),(124,'Moldavia','MOLDAVA','MDA'),(125,'Mónaco','MONEGASCA','MCO'),(126,'Mongolia','MONGOLA','MNG'),(127,'Montenegro','MONTENEGRINA','MNE'),(128,'Mozambique','MOZAMBIQUEÑA','MOZ'),(129,'Namibia','NAMIBIA','NAM'),(130,'Nauru','NAURUANA','NRU'),(131,'Nepal','NEPALÍ','NPL'),(132,'Nicaragua','NICARAGÜENSE','NIC'),(133,'Níger','NIGERINA','NER'),(134,'Nigeria','NIGERIANA','NGA'),(135,'Noruega','NORUEGA','NOR'),(136,'NuevaZelanda','NEOZELANDÉSA','NZL'),(137,'Omán','OMANÍ','OMN'),(138,'PaísesBajos','NEERLANDÉSA','NLD'),(139,'Pakistán','PAKISTANÍ','PAK'),(140,'Palaos','PALAUANA','PLW'),(141,'Palestina','PALESTINA','PSE'),(142,'Panamá','PANAMEÑA','PAN'),(143,'PapúaNuevaGuinea','PAPÚ','PNG'),(144,'Paraguay','PARAGUAYA','PRY'),(145,'Perú','PERUANA','PER'),(146,'Polonia','POLACA','POL'),(147,'Portugal','PORTUGUÉSA','PRT'),(148,'PuertoRico','PUERTORRIQUEÑA','PRI'),(149,'ReinoUnido','BRITÁNICA','GBR'),(150,'RepúblicaCentroafricana','CENTROAFRICANA','CAF'),(151,'RepúblicaCheca','CHECA','CZE'),(152,'RepúblicadeMacedonia','MACEDONIA','MKD'),(153,'RepúblicadelCongo','CONGOLEÑA','COG'),(154,'RepúblicaDemocráticadelCongo','CONGOLEÑA','COD'),(155,'RepúblicaDominicana','DOMINICANA','DOM'),(156,'RepúblicaSudafricana','SUDAFRICANA','ZAF'),(157,'Ruanda','RUANDÉSA','RWA'),(158,'Rumanía','RUMANA','ROU'),(159,'Rusia','RUSA','RUS'),(160,'Samoa','SAMOANA','WSM'),(161,'SanCristóbalyNieves','CRISTOBALEÑA','KNA'),(162,'SanMarino','SANMARINENSE','SMR'),(163,'SanVicenteylasGranadinas','SANVICENTINA','VCT'),(164,'SantaLucía','SANTALUCENSE','LCA'),(165,'SantoToméyPríncipe','SANTOTOMENSE','STP'),(166,'Senegal','SENEGALÉSA','SEN'),(167,'Serbia','SERBIA','SRB'),(168,'Seychelles','SEYCHELLENSE','SYC'),(169,'SierraLeona','SIERRALEONÉSA','SLE'),(170,'Singapur','SINGAPURENSE','SGP'),(171,'Siria','SIRIA','SYR'),(172,'Somalia','SOMALÍ','SOM'),(173,'SriLanka','CEILANÉSA','LKA'),(174,'Suazilandia','SUAZI','SWZ'),(175,'SudándelSur','SURSUDANÉSA','SSD'),(176,'Sudán','SUDANÉSA','SDN'),(177,'Suecia','SUECA','SWE'),(178,'Suiza','SUIZA','CHE'),(179,'Surinam','SURINAMESA','SUR'),(180,'Tailandia','TAILANDÉSA','THA'),(181,'Tanzania','TANZANA','TZA'),(182,'Tayikistán','TAYIKA','TJK'),(183,'TimorOriental','TIMORENSE','TLS'),(184,'Togo','TOGOLÉSA','TGO'),(185,'Tonga','TONGANA','TON'),(186,'TrinidadyTobago','TRINITENSE','TTO'),(187,'Túnez','TUNECINA','TUN'),(188,'Turkmenistán','TURCOMANA','TKM'),(189,'Turquía','TURCA','TUR'),(190,'Tuvalu','TUVALUANA','TUV'),(191,'Ucrania','UCRANIANA','UKR'),(192,'Uganda','UGANDÉSA','UGA'),(193,'Uruguay','URUGUAYA','URY'),(194,'Uzbekistán','UZBEKA','UZB'),(195,'Vanuatu','VANUATUENSE','VUT'),(196,'Venezuela','VENEZOLANA','VEN'),(197,'Vietnam','VIETNAMITA','VNM'),(198,'Yemen','YEMENÍ','YEM'),(199,'Yibuti','YIBUTIANA','DJI'),(200,'Zambia','ZAMBIANA','ZMB'),(201,'Zimbabue','ZIMBABUENSE','ZWE');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-14 19:08:53
