-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','test','test','test@test','$2a$10$t6IS2tUqa2hN/vuz5ZU3aOyCXP2YOSi5bHrvqrSu4kIItGM5x8wSm'),(2,'pls','pls','pls,','admin@filestore','$2a$10$2IVKjxBsSD6hSRalOuUA9OmqKEcHP1Uv3k0xc2CCGeTrBZ5UW3GVC'),(3,'Laura','Jones','bacfskxmdf','m.aytm@cstolxmei.ke','U*uOR0$yxfA'),(4,'Kevin','Miller','qmevmdsxqgzqmhwe','t.vbtlll@bvxpukzh.bw','PiMKFkhEOpm'),(5,'Melissa','White','kpfadsqorcefey','l.ocryss@aybylbqm.fm','JmzD6teui*OloYTWGJ^55w'),(6,'Betty','Thompson','foony','u.jjqofdrybp@fpb.aw','uw65G11dw'),(7,'Nancy','Moore','wteiymobjktqtocq','l.mqvkvfynph@ytbijy.cd','NYRZ3wp#kz^q'),(8,'Scott','Wilson','jkhdcoqmjn','c.ngiykhjf@srf.ai','i88yYA'),(9,'Michelle','Moore','lhlvra','d.itwk@gbtslemyf.tt','^kgWA4JwJQ$WB!qTvzt^CD)g'),(10,'Susan','Anderson','eggoqpchu','f.fpwycje@ugoleqnimc.ru','cmpU3Sp'),(11,'Eric','Miller','ixhcmdylqjqh','h.bfi@zxpl.tk','B1)HXAYJ2bCB'),(12,'Eric','Clark','tlfpkrgj','e.fklrnpq@xhipdpoz.pm','&)kKz4L%'),(13,'Sarah','Brown','xiyinbd','b.ghzaucs@juksvcqe.cc','0!q6*%pI#5rO*8JWZ8e#'),(14,'Frank','Wilson','silwbt','w.smcvhvkj@siqqz.cm','%zBi]4lyq5i34HjqU$nrd'),(15,'Robert','White','vijtxxvftfjzv','c.odtml@ojgiwp.th','hVzcsE04'),(16,'Karen','Davis','aozgwxuhiqudc','n.yhteui@vbsfbwyna.ca','x0hw1!pB[Z0hUd$'),(17,'Ruth','Taylor','megssljwyvaujk','i.yufnfs@pgzv.jp','KFj6X8m)*$xYs[nB'),(18,'Betty','Jackson','gxmdhil','r.rhta@uujv.cr','It1Z(8lP1WA#ziLFAtSAt^i'),(19,'Robert','Harris','ztfmzpquzprfbi','p.hwaktx@xbboay.ws','MQEpyw0sh#X7y'),(20,'Donald','Jones','uxytbfdwpavf','l.brcjg@nlaokhveao.ni','qN8L[xWT!P7LfFs'),(21,'Lisa','Anderson','oddqv','j.gbbxompym@xreod.vg','XJ!vF*t!!7zd0'),(22,'Cynthia','Gonzalez','daeowisoswyn','s.rvvbwvx@atcot.lt','RuUWQvk)kr@jLGm'),(23,'Ronald','Thompson','cuzovuvpubd','t.bymrfube@bmyidmvl.mq','3z05&)JAi('),(24,'Robert','Rodriguez','ymouq','p.rtycvem@ycrwyqjldw.lt','D4rOU0*['),(25,'Margaret','Hernandez','zcqvgclilpg','h.neksvt@ussyleo.hr','K#5NPIEQuK[5KfXdV0uZXOfC'),(26,'Christopher','Jones','huhwcroqg','e.ruxupkinw@uikeynqa.it','r8dG%@string(6,24)rUz$L1Ha9y'),(27,'Dorothy','Jackson','lhhdvvcvc','s.gxzgona@hpkbnz.ma','kPoVEC3]]@jiGNTWyZb'),(28,'Melissa','Taylor','rblkwqckul','o.rdhvo@frlkr.cc','[OPBdamXpwR'),(29,'Patricia','Garcia','jrklvawrep','s.ncntkg@hhzpnqclte.sg','wHNG69*E3@TRM7XRDyvf97D'),(30,'Ruth','Perez','gbwbud','g.nlswdmv@kjt.gl','qG5McSp#UTFL!LFm'),(31,'David','Robinson','jhbnhpljsgkljke','x.ncozgn@potnempqhm.pw','Z7gP78gek'),(32,'Patricia','Miller','fdjshvemkbyyjqd','q.xeznx@vswzysrju.pl','z0IC[5Ik9AI99&4DkvUTMO'),(33,'Brenda','Moore','fnfzmwmnsjcw','h.knoklz@wfokn.gf','47oszkYTvW2sjBC@RMD^qD!'),(34,'Susan','Hernandez','wlovwuyqw','w.xaw@lxzxexcvcm.nu','cSlmpR2K61csly7J$km7MIh'),(35,'Sharon','Wilson','cruxrgd','y.wmrph@bpclbminkq.lv','fQmR$spI4'),(36,'Jennifer','Jackson','kfhysteh','h.lkc@bqfrmbb.vu','e$N4kHtnmS!'),(37,'Thomas','Thompson','pkglqbgqkon','o.gtgrl@weehejgtsb.do','O0iSBusnW4vdE)copk6BF0UX'),(38,'Angela','Martinez','kwtkbxljcpclcyp','s.krx@pkgg.hr','WAB8w*F2O9%F'),(39,'Ruth','Hall','wnpkfk','r.kebm@kygxoteb.an','kK2hF[lDfmA&Yv4SDN)q04'),(40,'Anna','Thomas','guoweywujpmmfwuy','s.nslbdpvmwc@leznfv.dz','q4)Z8D6OVs)n0JVOEtg2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-12  6:58:06
