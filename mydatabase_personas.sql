-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	5.7.41-log

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
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `kana_name` varchar(50) NOT NULL,
  `gender` enum('男性','女性') NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `workplace` enum('北海道','青森','岩手','宮城','秋田','山形','福島','茨城','栃木','群馬','埼玉','千葉','東京','神奈川','新潟','富山','石川','福井','山梨','長野','岐阜','静岡','愛知','三重','滋賀','京都','大阪','兵庫','奈良','和歌山','鳥取','島根','岡山','広島','山口','徳島','香川','愛媛','高知','福岡','佐賀','長崎','熊本','大分','宮崎','鹿児島','沖縄') NOT NULL,
  `household` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (11,'山田 太郎','やまだ たろう','男性','yamada.tarou@example.com','09012345678','東京都渋谷区','東京',4),(12,'鈴木 由美子','すずき ゆみこ','女性','suzuki.yumiko@example.com','08098765432','大阪府大阪市','大阪',2),(13,'田中 健太','たなか けんた','男性','tanaka.kenta@example.com','09055555555','北海道札幌市','北海道',3),(14,'佐藤 美穂','さとう みほ','女性','sato.miho@example.com','08011111111','愛知県名古屋市','愛知',5),(15,'伊藤 蓮','いとう れん','男性','ito.ren@example.com','09099999999','京都府京都市','京都',2),(16,'渡辺 彩香','わたなべ あやか','女性','watanabe.ayaka@example.com','08022222222','福岡県福岡市','福岡',1),(17,'中村 健斗','なかむら けんと','男性','nakamura.kento@example.com','09088888888','神奈川県横浜市','神奈川',2),(18,'高橋 美咲','たかはし みさき','女性','takahashi.misaki@example.com','08033333333','兵庫県神戸市','兵庫',3),(19,'木村 隆太','きむら りゅうた','男性','kimura.ryuta@example.com','09077777777','広島県広島市','広島',4),(20,'山本 真由美','やまもと まゆみ','女性','yamamoto.mayumi@example.com','08044444444','宮城県仙台市','宮城',2),(21,'山田 花子','やまだ はなこ','女性','yamada.hanako@example.com','09011111111','東京都新宿区','東京',3),(22,'鈴木 健司','すずき けんじ','男性','suzuki.kenji@example.com','08022222222','大阪府堺市','大阪',2),(23,'田中 まり子','たなか まりこ','女性','tanaka.mariko@example.com','09033333333','京都府京都市','京都',1),(24,'佐藤 雄太','さとう ゆうた','男性','sato.yuuta@example.com','08044444444','愛知県名古屋市','愛知',4),(25,'伊藤 愛','いとう あい','女性','ito.ai@example.com','09055555555','北海道札幌市','北海道',2),(26,'渡辺 聡','わたなべ さとし','男性','watanabe.satoshi@example.com','08066666666','福岡県福岡市','福岡',3),(27,'中村 美優','なかむら みゆう','女性','nakamura.miyuu@example.com','09077777777','神奈川県横浜市','神奈川',2),(28,'高橋 健太郎','たかはし けんたろう','男性','takahashi.kentarou@example.com','08088888888','兵庫県神戸市','兵庫',5),(29,'木村 莉子','きむら りこ','女性','kimura.riko@example.com','09099999999','広島県広島市','広島',2),(30,'山本 健斗','やまもと けんと','男性','yamamoto.kento@example.com','08012345678','宮城県仙台市','宮城',4),(31,'小林 さくら','こばやし さくら','女性','kobayashi.sakura@example.com','09023456789','埼玉県さいたま市','埼玉',3),(32,'加藤 太一','かとう たいち','男性','kato.taichi@example.com','08098765432','愛媛県松山市','愛媛',2),(33,'井上 愛美','いのうえ まなみ','女性','inoue.manami@example.com','09087654321','大阪府大阪市','大阪',1),(34,'佐々木 蓮','ささき れん','男性','sasaki.ren@example.com','08056789012','東京都港区','東京',4),(35,'山下 美由紀','やました みゆき','女性','yamashita.miyuki@example.com','09065432109','神奈川県川崎市','神奈川',2),(36,'田辺 隆','たなべ たかし','男性','tanabe.takashi@example.com','08098761234','京都府京都市','京都',3),(37,'橋本 美咲','はしもと みさき','女性','hashimoto.misaki@example.com','09087654321','広島県広島市','広島',2),(38,'西田 雄大','にしだ ゆうだい','男性','nishida.yuudai@example.com','08065432109','宮城県仙台市','宮城',3),(39,'渡部 あや','わたべ あや','女性','watabe.aya@example.com','09098761234','埼玉県さいたま市','埼玉',2),(40,'岡田 たかし','おかだ たかし','男性','okada.takashi@example.com','08056789012','愛知県名古屋市','愛知',5),(41,'松本 まり','まつもと まり','女性','matsumoto.mari@example.com','09065432109','北海道札幌市','北海道',2);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 16:31:00