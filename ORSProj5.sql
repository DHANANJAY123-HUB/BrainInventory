CREATE DATABASE  IF NOT EXISTS `st_orsmvc` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `st_orsmvc`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: st_orsmvc
-- ------------------------------------------------------
-- Server version	5.5.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `st_college`
--

DROP TABLE IF EXISTS `st_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `st_college` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `PHONE_NO` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_college`
--

LOCK TABLES `st_college` WRITE;
/*!40000 ALTER TABLE `st_college` DISABLE KEYS */;
INSERT INTO `st_college` VALUES (1,'ABCEFGH','ABCDEFG','MH','BOM','7879180688',NULL,NULL,NULL,'2018-08-09 08:28:20'),(2,'IIT123','indore','MP','IND','8676767676',NULL,NULL,NULL,'2018-08-03 13:26:58'),(3,'SVITS','Indore','MH','BOM','9123456789',NULL,NULL,NULL,'2018-08-03 08:39:34'),(4,'RGPV rajiv','Bhopal1','mp','bhopal','9123456789',NULL,NULL,NULL,'2018-08-03 13:32:00'),(7,'Rays Technologies','Soth Tukogunj','MH','PNQ','9827360504',NULL,'2018-08-03 08:52:23',NULL,'2018-08-03 08:52:23'),(12,'NEWC','AAA','DL','DEL','9123456789',NULL,'2018-08-06 07:45:40',NULL,'2018-08-06 07:45:40');
/*!40000 ALTER TABLE `st_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_marksheet`
--

DROP TABLE IF EXISTS `st_marksheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `st_marksheet` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROLL_NO` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PHYSICS` int(11) DEFAULT NULL,
  `CHEMISTRY` int(11) DEFAULT NULL,
  `MATHS` int(11) DEFAULT NULL,
  `STUDENT_ID` int(11) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_marksheet`
--

LOCK TABLES `st_marksheet` WRITE;
/*!40000 ALTER TABLE `st_marksheet` DISABLE KEYS */;
INSERT INTO `st_marksheet` VALUES (1,'a1','Sanjay Sahu',22,22,22,11,NULL,NULL,'2018-08-03 18:55:19','2018-08-10 08:04:55'),(2,'A2','AA BB',55,55,66,2,NULL,NULL,'2018-08-03 18:55:37','2018-08-06 09:47:58'),(3,'B1','Sanjay Sahu',22,33,55,11,NULL,NULL,'2018-08-06 08:00:32','2018-08-06 09:48:13'),(4,'B2','AA BB',77,77,88,2,NULL,NULL,'2018-08-06 08:00:53','2018-08-06 09:52:11'),(5,'C1','One 1233',44,66,77,3,NULL,NULL,'2018-08-06 09:54:53','2018-08-06 09:54:53');
/*!40000 ALTER TABLE `st_marksheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_role`
--

DROP TABLE IF EXISTS `st_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `st_role` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(70) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_role`
--

LOCK TABLES `st_role` WRITE;
/*!40000 ALTER TABLE `st_role` DISABLE KEYS */;
INSERT INTO `st_role` VALUES (1,'Admin','Admin Role Decided...Rights to do all123','','','1970-01-01 05:30:00','2018-08-10 08:25:23'),(2,'Student','Student Role Decided','','','1970-01-01 05:30:00','1970-01-01 05:30:00'),(4,'OS123','Faculty Role Decided',NULL,NULL,NULL,'2018-08-03 19:35:39'),(5,'Office Executive','Office Executive',NULL,NULL,'2018-08-03 19:35:14','2018-08-03 19:35:14'),(6,'Faculty','Rays Faculty',NULL,NULL,'2018-08-03 19:35:30','2018-08-03 19:35:30'),(7,'test','test',NULL,NULL,'2018-08-13 01:43:37','2018-08-13 01:43:37');
/*!40000 ALTER TABLE `st_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_student`
--

DROP TABLE IF EXISTS `st_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `st_student` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DOB` datetime DEFAULT NULL,
  `MOBILE_NO` varchar(12) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `COLLEGE_ID` bigint(20) DEFAULT NULL,
  `COLLEGE_NAME` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `IMAGE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_student`
--

LOCK TABLES `st_student` WRITE;
/*!40000 ALTER TABLE `st_student` DISABLE KEYS */;
INSERT INTO `st_student` VALUES (1,'2018-08-16 00:00:00','91234567890','sanjay1@gmail.com',2,'IIT123',NULL,NULL,'2018-07-29 00:00:00','2018-08-10 07:55:23','Sanjay','Sahu',NULL),(2,'2018-08-22 00:00:00','767666676767','arif@gmail.com',2,'IIT123',NULL,NULL,'1970-01-01 05:30:00','2018-08-07 08:22:38','AA','BB',NULL),(3,'2015-05-02 00:00:00','76776767','rahul@gmail.com',3,'SVITS',NULL,NULL,'2015-05-29 01:37:18','2018-08-03 15:10:18','One','1233',NULL),(11,'2018-08-08 00:00:00','9090909090','sanjay@gmail.com',3,'SVIT',NULL,NULL,'2018-07-30 08:14:48','2018-08-06 16:24:42','Sanjay','Sahu',NULL),(12,'2018-07-28 00:00:00','91234567890','sunil@abc.com',4,'RGPV rajiv',NULL,NULL,'2018-08-07 08:24:36','2018-08-07 08:40:11','F','G',NULL),(13,'2018-08-07 00:00:00','890000000','abc@abc.com',2,'IIT123',NULL,NULL,'2018-08-07 08:40:33','2018-08-07 08:40:41','SS','AA',NULL);
/*!40000 ALTER TABLE `st_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_user`
--

DROP TABLE IF EXISTS `st_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `st_user` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOGIN` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `MOBILE_NO` varchar(15) DEFAULT NULL,
  `ROLE_ID` bigint(20) DEFAULT NULL,
  `UNSUCCESSFUL_LOGIN` int(11) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `USER_LOCK` varchar(10) DEFAULT NULL,
  `REGISTERED_IP` varchar(20) DEFAULT NULL,
  `LAST_LOGIN_IP` varchar(20) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATETIME` datetime DEFAULT NULL,
  `MODIFIED_DATETIME` datetime DEFAULT NULL,
  `PIC` blob,
  `PIC_TYPE` varchar(45) DEFAULT NULL,
  `PIC_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_user`
--

LOCK TABLES `st_user` WRITE;
/*!40000 ALTER TABLE `st_user` DISABLE KEYS */;
INSERT INTO `st_user` VALUES (1,'Ram','Sharma','ram@gmail.com','pass1234','1981-06-20 00:00:00','9999999999',5,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-10 12:57:45','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0\n\n		\n\Z\'!%\".\"%()+,+\Z /3/*2\'*+*ÿÛ\0C\n	\n***************************************************ÿÀ\0\0ñ\0ü\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RğbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ğ£ÁÓóœcšn2ŞÔc9ïLÄv9¥Ç¡£½(8a@®9éûAÏµ ü©Ëòœ\nZÜ.9yõ«Kû$äv¨í—ç­zGƒ<úå»°BàzÅiÜÊS±çOÑÓ¡¨‚åúWyâÿ\0K İfDe@3÷s\\iUİOqC‚2¾ä%0à~4ğv·467:qzVeöæ‘V$I\0TÈKH}ÍS;[sŠtw/»zŒ\Zƒ”é¬¬K…fÇ­l‹K‹V@»$ê2zÖ&‹¯¥¶Ü&@>î;{Ö«ê‘İíÆĞÙÊ’sŠ|Ä4ÌÖ´šÚSèF9Rš¥2‘#w\0bº[™¾Ó\0W;İ{ŠÃ¿‚XXqòwc¥Äò™ìş¢£,ÌN\0â•°ß7aQî!€^rj®	XvNFGnq^‚“ƒğeãƒ;å^w\'É É?¥vğ°	äFcÿ\0úSZœ<y$ãûÇ¥Iœj(±ıãOçœS\Z°õå¹8©Ğô\rÚª‰8äóSÍ‘N Ë[½\r9IèyªÜ‚HŒ|Ì™«fv$/´ŒgŞ¢8-Ş¤fÃ8÷5O\"Xkgp¥.ÀÒ9ŠLç¯_Ú—Òô½!<ôı+“S QÁæ·\'4OJ9éÚ¢r[ô¥\\n$I‰Sê&Z´ƒÌ¸\n3œWÑ­§ŠÚãs)†GšğÇÚS9ç+Ñô?†ã[˜§#•/ÜÖç«üVĞ—QĞÄÿ\0hŠß`;Ëÿ\0µ|Ã©yV·.±º¾Æ<¯C]¿~-_øªÏì‰Áœ}ÀOçŠó’F1ÎgvmdõCšwo•G¥DÊÛòÄ“Nä0$S™Á?v‘hbÌÈÄ\01šO9Ëàœ})ÛíŠ$ùªzåˆç”67V¥«bN~µ–7p2*U;_älgµPèæ‘d\0HËôéZö×Ê!òï0êÜ•ÌE+\"üÙ5`ê489Ç85èV4ïô˜·	-dÜ§«Yn#óõ¢Êı¤‘ÂL³€:ZÛ‹†*áW<)=ÍTfC‰•¼3îî9®¿ÌÇÃ¸Áy›·Ò¹‹»Vµ”desÆ	ÿ\0õWQá¹D~\rÔĞ\"üÎ3Æ3Ç­os)&qÈœõô¥yëÍ0}{qN g©¥bí g<ÓÆIÊÓ€N}iIÃajĞÉğÇâ—æÜ0ÕrëO,KqL,JxúÔ}qş{ÒEFÛ·t¢ÀHNé§¯LÓ	Ã{ÿ\0QNYÑLG4w`R×=iØ#ïP£æıkŞâí<\n“Ëu<VÖ Ük“´6ÈÌãÒ¡Ö4™ô‹Ï\"åX0ë‘Zr‘Í©šçéV!È2µ§ÏŒsœgñ©Ô€Ê;ÔØ/ÂâŸ…ÂÖmö§%Ä¥Cá;\0zQ}>Èö©Á=k1IF#¯4›bIù€±\rÍûãŠ€±-ÍK»ƒT¬9ßpâš	Ï4d{Ğ¬\r&“ËcĞSeUİ¸¦tlqS§Í×ŒQÔÆ£pÊ§h0r¹ùü­FjQ30Ú†˜¤e`ñïKr¨é¹@İØÔF@ª®y=*º$aFzTqşóĞç:Ö¥¥ÄæáA$„ÇáÎk!¦+ 9¥ûQYƒ#`cÖ‹ÔênÄ³Û¯|V¶ˆÛ|#¨#;ÅsÚ]ÈØ¶ïlû×Ch?âGv\"C şu¤„ïs—8ÈúÑÑıhf }ÚhÎü‘ZÜhp)Ëò0İÓµ4·¥8(cÉ b©¸É¡‚ôSŠ9Ç=)ÜBI!8Çó¤ÜGÿ\0ªšN\'A<bš`+Hãó¥RBŠoCOÍ\rêpGÖ·|~”l\'şu<P†9®{Yš3Ò~mãxæ¸š4€#ÜöşuÑ|i²Ğ.5(/ì®ĞÜ+$q”zf¼ÓM¸{97F9ä}êæ§wö¨ğ9ãZÙ+£õ9¯*%“›ƒW\"Ó|ë)n‘â‡ˆíQ<8“NkºğºFÿ\0|M7,‘ùÔj3ÍuÃgNÙª óV¯9™}ÿ\0^©ƒÀ\'­f÷5CönjqG¼î¹“ëEË³%XKæšWÔ†C·ÒXP\0w\r¼úÓşpÃüÒ…ÀiT¶âM0Ü™\"İÜS™£‡¦ìÀ~´ã·4eš7Œ6Ú£\"ªôãš³æ P3Å\"xÁİßúÔ;œç=)~`IïW›œ­Àô¨TbTázñI;…‹2á¶qÅw6\0·‡n.ZóëPŞhjîlíb­Ó=ëXneSsG”’”\0qïŠcšµ$V# ç“@aÈÍy‚Ğ€và£M c»“J£w^´Æ\\SjÃAnıéŒ¿7\\Ğ§\'šZh õ¢œzÓïR{ˆ©«]J©Şì	\nsŠš8vÉÇ®ô­ÿ\0‡ë\ZøŞÄJI¡ûÃgJÍÔ¢ëWjFÚ=9¬¬Uõ/éV&ùÊØ3×ñ¨§…à“Ën}Ïjv—9·˜0úç>ÿ\0ıj·vË3nÇ?ız×c\'¹ˆä>¸ïøWMáË/Â~!¶ÏúØï¸ÖÂ7p+KEq–¤˜ëÏõ#¶§{‘/3Ö³ÉËqÓµl_AûsÒ²Õ@>õ‹Z›Äa)OT…zg­6A‚1H±\'*DO›š‹vXT¹PªrF=juÚç½¹¨ãBò€‘±ä:\roiş¹¾eÛ\"÷b:S¸(½Ì‰A¨ÊÉ×œ\në.´ı;J‰–I>ÑpGÊ£ê*§‡®¯˜Jb\"6<èj[›f5¬\r<»UY› àw®»Iğ·œ¦K¨Ê¸ÇZèô[X§\"fN1ÇZè|‹q\\ò¨˜Q¹ÇË¢\"|¦@à’+QÑ$XgÙÆs…kÑRÌÈàÁ8©Â8í˜:nÏ¾Ee\Zñ³¤’<:8È»+Ğ©;‡§Jêô´	¡Ü(ÉÁ=ª·ˆ4Å²ÖÈp²>¾‚®éö³\rãtgq=<×¡KSÊ«£9ğ0yíéFà=éÏ‘ŒINˆcùÔC†Î+w¡+T)äñFJFqúÓºŠBÃw4 ÑÉ{RƒÍ8˜\Zk1-øÓzïJQïMİƒ¹¡HÀÅ!u»ŠasØPW#¯zfÂOÒ{L¼“OÕ­n \nd‚MË¸dôúqü±Sø‚‡^˜DX¦r7õªHvJ1Üäşu¡®ú‘vä‘Î*QGr¤LC`U£1j”ë8ëš›xVæ€jîà[ÌlJĞÑ˜×€–edcíÖ¨‡‰P1VtÂF£8%N>´ĞŞ†}Ô*w§$qšÁxÊHÀŒ×Kt§í¼cjQìl‘Ç­L‹¦ÊFsQIïÅHo €ÌsYšŞÄ+İÿ\0*±\Z—pª2Ç©m´×¹lRr{W[¦xlÛH²K8ã#½g)XÒ1»-x_DXcK‹ƒhÏ_óù×U¨ÚGwª9ˆÉñúÕ{pP…À·çWŒFXÎN¬9›:ãØã ÑÅî°!·VeFËËëÿ\0ë®î\r-aòöœª¯\\u§èúLVÈJmÜÇ5»š²Ÿ˜á{â”¤ìŒJ˜¨Uù‡J¿š@Á\0ã5}-â¶aŒØÔ“\\æ \0yæ¹İÛ7ŠĞdZt~_zÕ{ô²±µcpËÏJç|Eã˜´¨LvØ-\\š–±âëÆó%òâ^„Ÿç¤i»ÜÆ¥^†æµ.wp;€—8ÛÇZÑ¹…#¶CR˜ë?úÕ†m<°\Zo:N»úV­Ì?cÒ£‡\0şußJVĞò«£œñŒÛ«ªüàõÏ5Ëm-Ïzêµ×Øü€»·5Ë;Àş•Ğõ2€Ò>^¼Ó@\'©¥,h îâ™b‚ÙÇZkg9ïOÃg#ózÓ¸ÈÇŞçƒCŒõàúÔŒ	åAü©Œ3ÔT‹¨Ğ~|~TİØ=)@ƒÓ…U‰Ës@ËJ¿¼ãùf®j|Ü!;”dÕ076Goz»zUŠg–‚\ZÔ¨ƒ¿N¿Î¦P$ qL?) óBm\rR1Ì£ÌbÈí¿o~•T¿ÍÆjÍ™&ú0£’qÍ=Æ^^¸ÇùÕ+Øks¢´o¥ÓgƒœÔQÁö¹)÷›QS!Ãs“+µ°=jHÔ»m+Î}k§Ô¼<6Æh›q,3\\í¾V`Ë´òjçº¾‡Z‹êuz6œU¢‘Î\0\0€;×FÒÆØƒ‚ÕNÅCZÇÓ¦µSÔËÍ(¶‡p,~¢²¬Ö;ïuÔ¶—d_¼l÷¨âñ5ú§ä÷O5wHĞ­ìmL—Ä4§œŸJ~¡®ÛZ¶Ö‚wA\0æœRlÌ>6Õ­äÂÄuåk_Oñ¶£,cp\nsÈÅ`E¬\\ë—VöĞ‹pgr®‹*>•¹y¢6™ªuu”I½ª¤•‚\r¶oÚx¦K“‰IéÇJ—TÕåÌ?U+í.@*­ÆzWam¤‘å)8#îô5Çus²<Ü§ê‘¤Ç5üŒ‘É“¿¨«~Ğ¥ÖtkÙüÿ\0,Äø·Ø¸Şs}z\nìÃl±˜¦Œ\\D¬pŒ8¥¦isàE°çh\0u5¿´I{&Ş§7áß\rêVwGío\\ç5Ò]øzëRÜöQy’\"ÿ\0/<sı+¤´ÓÁäã’ET×\ZöÊÎWÓ¥h¤Æ§|ÿ\0ŸÖ¦•OxšÔ½ÓÊ¼IÃ`‹°¬ˆpßQŠäğÁ}OC]vº’ı„‰‰.†ÜrsŞ¹ J³uë^¤lÑå¡À¤÷¦ Ô›°9îi	r3EË:ş4ãÔcùÔmœäSC0aš@=›<E4QCdœšV\\{Ñp\"e<í¤äÔİò8¨÷©ëEÀÑsı™®c‰;]Âä)÷Å>ñ•­íÊ‚>_ÿ\0Wé[Öb[¸¬G—op<¹à<àgïY7Ğ¬V1mì8úRL™]35\\ïçëÒ­FŠA$Ÿ¦j·GçœŸÊ¬$Ê[{ãõÅ0Ü\\sÈüjÅ¼^]älA8eè3œô¦#§œ»yäp;û~•ß§€î.-´Ë­2X¦x‹½¸?8Ãr>˜­@±ÂêˆF¡  ğÄtÅ\\ğ¼)&½a‘y§øˆãS“Í`v·ËŒÁŸ¦_-¦«Sƒ¸sSQèË¥ñ#Ón,`w“Ç`:×™xIÚğO\n…¾aøŠôû—K}óÔšæ¼k£‡Ìˆü¸$àg5æ&ùZIrègi%^Ö2yÈë[‰§@ÄJ«óœ“\\öŠûmÀÈù°>•ÑÇ3£ü)É»‘.m\Zçäwa˜¢ÃCç	ò0N3Áö<v­˜-øÜGz½•9¬ùÚf¾Îæ4Z-…¤Ïug¥Ë³ªõÏ_§SÓC§¶ó4ÊÌÙÎ[šêíô…ã¥YÌvú}(u.’9d\\òËœ~µÑi7F2 øÖDÆ8æ óƒV,¤Ä  ä°ÏçX7©¼Q»(0\\)À*ZĞŠ(Übª¼M=’¶0ÀqTÒy-åÚ§>ôkp6å_!à§½r~+”Ë¢Ü…!Nƒ]ºä­`ëàK§H¸à©ííZÓøŒ+kxûŞ3[˜§œú¶On¼ÖiXÕ²_5£uRàŒMfÏš#@Î\\à`w¯b;µTç\'íMm»ñœïK xË¬ÈU‡PzŠƒ~O?\"]É»j\'l?L\naİ¿äŸzĞşÊ¸XV@¥³ÏLÑpÛr‹7Ì03*FÚFĞ	&¯ÛØD$V»ùœjšqmcr“Zv‰ƒ¨\'ƒEÑÚ™2G¶26•[\\…?…všö…\0ğ”:á¾‚KÛ©0Öñÿ\0s&âæÏ¸ŒšEÜ›ÃQ-¶±\nÂ+ŒFÀEiê6nÍåHv´nQ†?Ï¥I¢ØA¨êqYK\'ÙŞQ•“¦Öõ÷ÕÒøËE’ÉbÕ‹#$Ò4˜Î@u<¶}5<Ö2»g4ÀªpÙ9şf¡–ÅãhÙ3‡#Ó¡«ÑJ%¸İŒåGnEZ‘˜(m½óK˜[ãK)\ZÊ„îP2=}³Z6·úßŸovğÌÊ¸<ã\0cÛŠd³3©PJ÷‰×k9,}q‚j¹…v&¯òÉ½äîä–ä“ëYH¦]ü‚q[·cÌUÚGaYßa,ÇÍR9ãŞ“Õgs²Ğu=¨X\\\r¼rjıüÏ6‰42[ù¥¿Œ‚¸[K¦Ó5H‹`x•ØGy.Á‚pFqœşuÇ(ò½RNhÙœÍ€)tTŸ0ùq]»\0Ã\'¥R¹µh¥k¬	ç#­6;œÈ§¶qJ›_SEdÎ¦ŞUïZÖòŠæâ—€Pg©oq“ÈÁ_CÖ±’:¢tq8íÿ\0ë¤¹Lã×ÜV|9`3Àè3RÌşhÆù\"¥DĞÆ£\\—¦jt¸‚\'Ê=éó@„ÕL.søU(Ü‹ÛcVM}R&3–ÇaVlí\ZK6S‡=01XÖ¶Š“™AÈã\"µ%ºò@ùÕ@è3IÇPŒ­¹*HÉÛsTµ9sg6ºi^ë,\0Œã#š¯©bKFùˆİÇè¦Ÿ1•i{¬òÛ‘¸;r~|ƒŠÕğ­•«––ä+ÌeÉé“‘Yn¯ÙÓtdH÷«Öù,ímôõÇ¥zğ–‡6îeø…TßÍ$xØ[°ü+‘»¨àŒWTÓ$²ÙAÉçŒf¦Ó´;9DŒÅv£aKuõ£™\\!-4ò7·û5Ñéš¬1Zİe‘‹œSÜÚZZLë`îÆ¬ûq4ò|ÁQ	#ëş,Ò÷\"Ô%¸b±G„#9ªQ¢IqcŠÁ;³Ş”…[¦p®*ÕµÔ9òûŒuŸ1Ë·µ–=êà,G·ù5wû=&Pò±ÜG<fƒn÷¼Ñd)æ´maíÔ»ıqBcÔçWUY-—Ûp‹…*zWgá+É5†zí•à3M†e,s‚NMÿ\0\nmDkq-Ô¢<õUÀ5Úhº™ h7vÖ~d¦ãrÈîsíŸz­\nOSÌ<;Wz·—lØu\\‘Ğ•Ö¾”û‡îÎ:òµµğ÷HÒdÒÍÌĞ¢ÜÅ;#È:òzšîMÒW•˜Œä“ÉæšIS-‚£sÍşíW’ÎgPDG§ì©§èLBËär}ªptKT¥ªrËœçš´O!â\r‰´2câ¦k_1A(ƒ×Ò½UÑæ9k[ÓåªséúDÊ@±AËÆhbqìyL¶6ØÖß:şœŠµ¢c+¸¸ğîÄìÀ¬é|#’f3 ôâ³åLp”¢Îjşo>Õ¢#åÁÁ¯ùæ¹«gÙ)Y	Ïõ¯@¸ğ}Â¡0JF;\Zàµ¸N×¥±r<ÈğHúÔ¸¤ˆUmØİµ”ğÒµ#¤Š3Éë\\íŒä£ùÖ¼r°##­pËsÓ¥+£ZH—õa®¼ŠÎw*+¹	\0/\'µ(´Íµ-=ĞŸ›ëš¨×±Ç\'Ëó7ÓŠ¦lî·3’^jÅ¥¼QÈD±äzµªHIÓW\\*ŒñQ_i÷w†yö1?(üûUÓ5´ÃÌzœÒ$ë4€ñ‘Èˆ¢VBh‡N³º³‰EÄ×hÁ5&³t‰m€G·=+Eˆx¶°ù@ôé\\>«ªÄoÚÙ‰,„£Ö¢²9ë»D&·I]SÓÒ«‹‚Rà‚¬0iÃT‚$PÑK¹IÉ#Şöø&%”v½‘ãI6Áôõf\r=óÍW’ÔK7“nüÕ„¸ƒr€í×±§“Iæ¦¹5:\n)Ü’\r#æ_8©\nzš‚ëÃĞ¸o³J¹ï“Ûõ§Ÿ2Qóœ|w¦ÊåT~ğ‚ËƒÖ•‹KR¯ü#†Øü¬Øàæ«ç8Hê}ër\'imñ‡<6ŞµZº0c!ñÓ5f]µ½İ´BĞ˜|¸¨ãÓ®v|Ñr}MkÊIc‡\'iÅ w?ÅŸ©©&çD5yÌ\"İåo+;‚ãİª¶¥¯6›¥I2çÆz“íP[iÖ²iõLmä‡8ªz†ÕºYAs$ÅäP¡†AşµrĞÒ‚æz‡Ã­Ri¡½6æmÀg×Ö»±w.ş=³\\F•¢Rf’0Ä/L×AæÊ†=zƒE7ÌUxò=\rèç•˜gš¹\Zï`€=ë›K™	áÍL³;9&FÍlaBÄ¹uüêÜ>Ha’¿r\"w\næ?Z•.Ü‘’iÎ®vêÖËÔ#sR»0Àyk\\XºrzŸnjO:mœ¾)¤à\\Yí%‘Us×õÊ¾dñF§ı«ñ;R»P6©\n\0=…z§ˆuitây&acBÜ±8éøf¼O»ß¯ù·+áÎ{šÊFôõg[ÏÂ `qšİ´»YãS‘‘ŒûV0‡É¸òHS’§Û§”–Í²œ®y­sèÎø]NG~ô¡ËI—¬‹kß7ÒCZqÊ¹ÜïYJ:èmUòqI)ÊŒnõàÒÄª>n¿şº›tc\nqœ…$še]ÛiİÈÛh\'Ö„\ZZÛ¶wg‘ĞU+Y QåøzÍ½ñ…§t˜ÀUç\'ıjvrd¹¤t7¨ÓF––² bÁ7zõşUåù·²ÀºÛäz½¨ëz³kbâ)Í»Úÿ\0«Ç=G_Ëµd¾«W’ÌÑH%•ËHÊ~ùşk¢>]YÅV§1ÓY]‹Å	(]ñğÁ‡½YÂ²ñ¦	Àâ¹[mSOkÔ¸šy¢d?tÇ¸¨üuøƒN½¸Š4ıÒºŞ²ã\'¿Óšé¹ÀÓ¸ù©*Zİ@ûõ¦îÓÔH¬ØWKmá¸µ[TšÎâÚqĞí“îš¯sàû¸‰\rlÇŒ‡SÁ¬ÛÔj,Ì6ºA‰š)d\\ã\'ëXÒYËs È¬ÎqÎ3[ÃÃ·Q¾<–ç’}\0ÿ\0&s¡L:ïOªñùĞ5£2’{ûhDÕéÇZ­qwräµÊ0\0q°g+e´‰ç¯\\R ¹‚t‡j#IƒÁ$`ÒHlÌ³¿C1S‚0IÜqZQM&T!µYŒ©Eƒx\'æAı{T±Îˆ˜6êOûkÍ2,e­ÈAbW	§Úß}ŸU´”Ü¬[%V- $zõí\\öŞ\\b«ßjqß|}ÿ\0úÔÚ¹¤Lõùo,§×$¸±¸·ä€y\0Æ~½¿Yb üŒ1Ÿ_zóêM­äH—sÎ+ÓŒa”èG¥ĞU[“\0û9\rúÒ‹œ8ÁÏ4ß+iÀRˆÀlZ«œÍ‹†\'\'?…=.¾nøÏzj>Ş<Õ•òØŒŒ\ZwcHì–À$ú’ÚØ½ÌÅV8ÆâXÑ!·‚vXâO¼ÌqŠò?x¾]rá­m	KDé7QsHE¶AâÏ¯êÓHî~Ï*Š\rÈÿ\0ë×9$eH,zzóíLY[y÷=jYÔ(æ¥êt¥fw>Õ[²[9p.íÔ2o=?*ÖòÛ$\\2õ•åö—w·‘ÏkòKdsş~•éz^¯câcpÂÕ^&8İù<W<è½ÑÑNzêM>$ıä\\7lUI!»·û¹e^Şµ­²X¤¨SœgïNÉF}8¬“ksªÊ[‘kÅ€Ñ7Æ•µiY€HÛz{ÕçUn ­68Ô?AŠ|ÈÏ’E8¬¯/ˆ2“\n÷Áæµìô»=67¹ÀyòÏß‘L7¡ËzóU5-T>–c+3àdãŠ#yJÈ9m³›Õç]^Y#UÎO¦3Y›A˜oÛõ#5=Ô‚MJpŸŞeY·ÑÚhÚG”tÈ\0×]¬¹É„ª ‰w(Å2XÙQ]FY•=Ü^VáN~µ³é<ÎIÏ-I±%®§{hÀÚÈÑüÖİu›gÚ×\"ÿ\0tšÁ„ÆÑsÃŠ–Q(É¢ÁÌz—Åt‚ßmî%Ncb2:àäwàš½Å-.vÙ=ƒıî¸¯6’3‚0@©VĞ\0\n®@>)[RnzÍŸˆ|1«Æ741I×/öF•3†@Gb­ÇQ^? NXŒ7~qNƒRÔìşk[—U#‘×<*¬+¨4( ™†åÇû}ªÖ‰Îsgpk’Ó|wyÊ—Ê²¯ñAù®ŞßX³¹eÔ†ö¦‰¹ó\nÉÍ/›óóš‡¡¥İóuªĞÜè¼($ˆ4›K©\n0NO¥z®¤Ğm¶‘rT`œû×’xTíñ»çÊ½HH¿hVäí9¤a7fn½A\n@4õˆméO‚æ;˜Æ:ã§¥8ğ§$h[‘¹·*ùíìi&–;H^y\\*/RÍŠKıJÓM·’{™è3Ôı+É|MâÛÍjé’vÀ¡;šor£Ë>+ñ}Ş³+[ZÉ²ÌŸÅÈëëÓù×3¼ubO|â£Sœã€LõäRä09¦tF6$U;ƒtÅKüu=ê494ğ»Ni0(²ÙØpZ“sÛÌF\nœ\ZGÃ\'ÏZ’5YmJÿ\0\Z•¥-]™,ê4ïjIj-®JİGŒd¡õ±câåùeÜı£šálÆ ô«ûq	¯Cêp©ØÎ8—cÑ D»â6Éô¬fKù¸ü+Ï,u{½>dØÄ÷Á¯HÒµ…Ô´WrA•G#½x¸Œ$©êJ\"5™,™†8èx®{ÄÚ1±Â± `wäWNùmÄw`õ®_f:‹+)àáÌõ&¼¬´\"È®£ â¦ÔnP¥”‘Áõ2DSÕzısZN%¢É*oÈÀ®ªñågŸ\\än­ä„‚Ç!‡µ45’{£9^Ç?v™0ûe¤™R»[+WtDÑVIÛfóŠÁYš\\’XšÓPkrwwg¥hZÅ¹Æäö¨¼Al\"^Z8|¯$¥:Æí¥Úƒ\0€9¤Ö¤2ìÑˆ%	«ùe\0¸ô\" ‘_‘Ô\Zp+ç(<f‚nE8Xæ\"Aß·Ö®ĞÖ’õwßF£8Ç?Z¶m¼§³ÿ\0U03/­¿:3E¼óGĞËÔõb+L&ùÄÉÀÅd\\C5´ízÔ„Ï;û<¯0A:\nc#G)IVÆ…d/õXÑ·\0$Vş«á[Km>{ÌÎ=øji}L?yI®Û	u¯N2Û¤„ª0çLW“éÍRÜ®NÖ8ë^­r§ÊGQ´gµrW,[\\7šlsÉİ€+7Ä^.]-^y<Ëœçm`ë>\'ÇÈ´9~ìGC‘ÓŠã®.¥¸¸i&9vş\"I&„8A–ou‹Û†šæBò1îúÕQwr¡üi¡AÉîM8N3Tlâ€}ßZP€ciàóÍL©Üôª(y<U…eá\\ıj4ÌœyJN:ÔÓÆ¬0Ñá‡J]IªÑmS‘ê*;s²à½p3õâ–Ù:“ĞjÆÅÎåê?úßáUZBb…Û#.03ùÓ¥Ü¤*±#<špsòúÔè›†Í{¸gÍz;‘YÛ™O=+¨ğÕêÇtabÀ¶HÇJ§¥øoQÖÕ„Jå{f®¿„uİ$¥ô¶‡Ë™6äœ}+›RœaÊ÷5¡w+£¨TÚÄÔzb¹ßhæe3Â¼ã<väVÅ¦§ıºI\nã%IäqV\'Ù<E1Ó8÷ÿ\0ëWB§$ô=j‘æåñJRp›ìÏzÒº¹a§à•Oñ§øƒM‚Åcš2w’xÿ\0?J§8İ§œ}ÜgµéT÷ãsÌQåve½=–dUÀ*W¸ªz³¼¹…P* ãëW4?.HÑAÁ\'¥[Õ¬Ğ.èÈç‚q\\Š×-ocMÔdA¿2“·ŸJİ‚Óı1c$áˆ+ß<×.è`¹,NyÍvº[%ÄvÓ#Wïcê?Â‡¹2DÒƒ‚+…*W‘üÔ×©¥‹€?çÚ´æ†õS Ã ãµ‘42C!·nFAÍ+™•îf?m„ ûÃ5zO4º’}j›DÒN‡Çz×X°Q²T3ïH\nğa5‘¸*1Í6ú(¤ºf9©\'R÷¸Ê‘¡Ê?:.#Îô‡“N½¤-\'Á¡{«j7–ïXHÉè½k¥‰m-É1DTûÕg|r© P9ÈÆhR5êq~ğn³{şG—\n¾IfÇJßñN½¡kKwê1¼.?iu_½›ZX6Ù Ê£ ¯?”´ZW.Äçq$æĞK4’JÅÏ,s×ÜR<Û¥5FI=}*Â`àÆ}j‘h`\0¶;v¥\0–\0T­\Zc®iì¡:Ÿ¥PÈ\n~:ÓÃ¸>Ôõ\nøÏZCßÅ43ON%ÃùyçœUÛˆVe,¡vã*ã¿Ö¨é¯˜a¸Cwñ­[>æÉÎC4N2¬9U#>¦3Ã„Æzw¦|±`“’NkRŞÀÜ9eÈ\'¯z×J…fÄË“ô©–ã¾†$Vó:ùª·5,rÀç]«ØDºrª*ƒ\\µÍ‚o,b½LT´8êjËş×&Ñu¨¥RÂ8“ßçù×¸ÛF/lâ¼„¬N¿(=³‚Gáıkçw‚XdFN1ƒ]ï<pÚ]ÂÚ]1ò%à®î•Ï™á\'R<ñ7ÂÕQ•™cÅ^o\rë+ªiã:eãe×´,}ûúVmş¯§›.U˜àà’y¯b¾²³Õ´™-ò$´ºMÁ“.zWÏúï‚õk?Í§JZDå¢™ò.Ex{Æ|³=i7%î˜×ÚìšÔ¤lÚ€œdr1V-röq“’x«.¶»Ç™ºEÈ8«V«åÛH={w¯£…?İEGiêWÒ.>Çª¦mŠÇ‚xÍtó h\\rF2¤ŠÁÔtèšÄ\\GşµNr*”\Z­ä)Ãî\0t&¼ÛYš¡·P;HHä‚EoxUÙ.>Í1À$c?ZÈ‚èÜËæƒG¥Z·™âÔ¡‘y<ôš»hL™ßÀ6\\İºJ‹V€lYƒ‚GãQùş`Wş\"‚§Ì–d¨Î?^+¹	™ìÿ\07LñV1Üµ»dd\Z£<¾C«vèG¡5gí^t*`ùå^A§­ Jäê“†,»Êõÿ\0^¥7óŒBk®¤†MÓÍ´w^ôå¿!FÕv¸ ,i7úÏÂ‹ŸøóóÚŠ*F0½ÿ\0ë÷Q“ï¯ÒŠ+CXˆÕ<¾´QMHß{ñ§IÔ}(¢¨dqıÿ\0Æ¥ÿ\0–ƒëE!›ïÇşñşUè_ò\'/û¢Š*Ñ,Çë_ëWãû¢Š*&OCR/ø÷ZÇÕãå¾´Q]8OŒç–ÆsıÃUìÿ\0ä ¿‡óQ^ıOàœôş#Ş¼ÿ\0 ÿ\0®kü«?â/ü~Z¸ßÒŠ+âjÿ\0÷ğÿ\0â‘Çã}Z¦“¿áEô´ÿ\0„y•¾2uÿ\0çXSıïÆŠ+É4DVŸëŸıá]‘ÿ\0!èè¢«¡2;1Õ\Z?øö¢ŠçêdwSêßQüéš_ú·ú\n(¦·4‰NëşBıêÛ‡ıX¢Š:”ÿÙ','image/jpeg','137.jpg'),(12,'Sunil','Sahu','sunilsahu007@gmail.com','pass1234','2018-07-06 00:00:00','9999999999',5,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-10 07:55:34',NULL,NULL,NULL),(13,'Shyam1','Singh','ram1@gmail.com','pass1234','2018-08-02 00:00:00','9123456789',5,NULL,'F',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-06 08:14:25',NULL,NULL,NULL),(14,'Shyam','Singh2','ram1@gmail.com','pass1234','2018-08-13 00:00:00','8123456789',4,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-06 08:14:48',NULL,NULL,NULL),(15,'Shyama','Singh','ram2@gmail.com','pass1234','2018-08-07 00:00:00','9866697795',4,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-30 09:00:37','2018-08-04 07:42:45','',NULL,NULL),(16,'Sushil','Sah','sunilsahu008@gmail.com','pass1234','2018-08-06 00:00:00','1234567890',2,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 07:40:38','2018-08-06 09:14:46','',NULL,NULL),(17,'FF','GG','abc@abc.com','mass1234','2018-08-14 00:00:00','91234567890',4,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-07 09:15:46','2018-08-07 13:30:40','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0\n\n		\n\Z\'!%\".\"%()+,+\Z /3/*2\'*+*ÿÛ\0C\n	\n***************************************************ÿÀ\0\0ñ\0ü\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RğbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ğ£ÁÓóœcšn2ŞÔc9ïLÄv9¥Ç¡£½(8a@®9éûAÏµ ü©Ëòœ\nZÜ.9yõ«Kû$äv¨í—ç­zGƒ<úå»°BàzÅiÜÊS±çOÑÓ¡¨‚åúWyâÿ\0K İfDe@3÷s\\iUİOqC‚2¾ä%0à~4ğv·467:qzVeöæ‘V$I\0TÈKH}ÍS;[sŠtw/»zŒ\Zƒ”é¬¬K…fÇ­l‹K‹V@»$ê2zÖ&‹¯¥¶Ü&@>î;{Ö«ê‘İíÆĞÙÊ’sŠ|Ä4ÌÖ´šÚSèF9Rš¥2‘#w\0bº[™¾Ó\0W;İ{ŠÃ¿‚XXqòwc¥Äò™ìş¢£,ÌN\0â•°ß7aQî!€^rj®	XvNFGnq^‚“ƒğeãƒ;å^w\'É É?¥vğ°	äFcÿ\0úSZœ<y$ãûÇ¥Iœj(±ıãOçœS\Z°õå¹8©Ğô\rÚª‰8äóSÍ‘N Ë[½\r9IèyªÜ‚HŒ|Ì™«fv$/´ŒgŞ¢8-Ş¤fÃ8÷5O\"Xkgp¥.ÀÒ9ŠLç¯_Ú—Òô½!<ôı+“S QÁæ·\'4OJ9éÚ¢r[ô¥\\n$I‰Sê&Z´ƒÌ¸\n3œWÑ­§ŠÚãs)†GšğÇÚS9ç+Ñô?†ã[˜§#•/ÜÖç«üVĞ—QĞÄÿ\0hŠß`;Ëÿ\0µ|Ã©yV·.±º¾Æ<¯C]¿~-_øªÏì‰Áœ}ÀOçŠó’F1ÎgvmdõCšwo•G¥DÊÛòÄ“Nä0$S™Á?v‘hbÌÈÄ\01šO9Ëàœ})ÛíŠ$ùªzåˆç”67V¥«bN~µ–7p2*U;_älgµPèæ‘d\0HËôéZö×Ê!òï0êÜ•ÌE+\"üÙ5`ê489Ç85èV4ïô˜·	-dÜ§«Yn#óõ¢Êı¤‘ÂL³€:ZÛ‹†*áW<)=ÍTfC‰•¼3îî9®¿ÌÇÃ¸Áy›·Ò¹‹»Vµ”desÆ	ÿ\0õWQá¹D~\rÔĞ\"üÎ3Æ3Ç­os)&qÈœõô¥yëÍ0}{qN g©¥bí g<ÓÆIÊÓ€N}iIÃajĞÉğÇâ—æÜ0ÕrëO,KqL,JxúÔ}qş{ÒEFÛ·t¢ÀHNé§¯LÓ	Ã{ÿ\0QNYÑLG4w`R×=iØ#ïP£æıkŞâí<\n“Ëu<VÖ Ük“´6ÈÌãÒ¡Ö4™ô‹Ï\"åX0ë‘Zr‘Í©šçéV!È2µ§ÏŒsœgñ©Ô€Ê;ÔØ/ÂâŸ…ÂÖmö§%Ä¥Cá;\0zQ}>Èö©Á=k1IF#¯4›bIù€±\rÍûãŠ€±-ÍK»ƒT¬9ßpâš	Ï4d{Ğ¬\r&“ËcĞSeUİ¸¦tlqS§Í×ŒQÔÆ£pÊ§h0r¹ùü­FjQ30Ú†˜¤e`ñïKr¨é¹@İØÔF@ª®y=*º$aFzTqşóĞç:Ö¥¥ÄæáA$„ÇáÎk!¦+ 9¥ûQYƒ#`cÖ‹ÔênÄ³Û¯|V¶ˆÛ|#¨#;ÅsÚ]ÈØ¶ïlû×Ch?âGv\"C şu¤„ïs—8ÈúÑÑıhf }ÚhÎü‘ZÜhp)Ëò0İÓµ4·¥8(cÉ b©¸É¡‚ôSŠ9Ç=)ÜBI!8Çó¤ÜGÿ\0ªšN\'A<bš`+Hãó¥RBŠoCOÍ\rêpGÖ·|~”l\'şu<P†9®{Yš3Ò~mãxæ¸š4€#ÜöşuÑ|i²Ğ.5(/ì®ĞÜ+$q”zf¼ÓM¸{97F9ä}êæ§wö¨ğ9ãZÙ+£õ9¯*%“›ƒW\"Ó|ë)n‘â‡ˆíQ<8“NkºğºFÿ\0|M7,‘ùÔj3ÍuÃgNÙª óV¯9™}ÿ\0^©ƒÀ\'­f÷5CönjqG¼î¹“ëEË³%XKæšWÔ†C·ÒXP\0w\r¼úÓşpÃüÒ…ÀiT¶âM0Ü™\"İÜS™£‡¦ìÀ~´ã·4eš7Œ6Ú£\"ªôãš³æ P3Å\"xÁİßúÔ;œç=)~`IïW›œ­Àô¨TbTázñI;…‹2á¶qÅw6\0·‡n.ZóëPŞhjîlíb­Ó=ëXneSsG”’”\0qïŠcšµ$V# ç“@aÈÍy‚Ğ€và£M c»“J£w^´Æ\\SjÃAnıéŒ¿7\\Ğ§\'šZh õ¢œzÓïR{ˆ©«]J©Şì	\nsŠš8vÉÇ®ô­ÿ\0‡ë\ZøŞÄJI¡ûÃgJÍÔ¢ëWjFÚ=9¬¬Uõ/éV&ùÊØ3×ñ¨§…à“Ën}Ïjv—9·˜0úç>ÿ\0ıj·vË3nÇ?ız×c\'¹ˆä>¸ïøWMáË/Â~!¶ÏúØï¸ÖÂ7p+KEq–¤˜ëÏõ#¶§{‘/3Ö³ÉËqÓµl_AûsÒ²Õ@>õ‹Z›Äa)OT…zg­6A‚1H±\'*DO›š‹vXT¹PªrF=juÚç½¹¨ãBò€‘±ä:\roiş¹¾eÛ\"÷b:S¸(½Ì‰A¨ÊÉ×œ\në.´ı;J‰–I>ÑpGÊ£ê*§‡®¯˜Jb\"6<èj[›f5¬\r<»UY› àw®»Iğ·œ¦K¨Ê¸ÇZèô[X§\"fN1ÇZè|‹q\\ò¨˜Q¹ÇË¢\"|¦@à’+QÑ$XgÙÆs…kÑRÌÈàÁ8©Â8í˜:nÏ¾Ee\Zñ³¤’<:8È»+Ğ©;‡§Jêô´	¡Ü(ÉÁ=ª·ˆ4Å²ÖÈp²>¾‚®éö³\rãtgq=<×¡KSÊ«£9ğ0yíéFà=éÏ‘ŒINˆcùÔC†Î+w¡+T)äñFJFqúÓºŠBÃw4 ÑÉ{RƒÍ8˜\Zk1-øÓzïJQïMİƒ¹¡HÀÅ!u»ŠasØPW#¯zfÂOÒ{L¼“OÕ­n \nd‚MË¸dôúqü±Sø‚‡^˜DX¦r7õªHvJ1Üäşu¡®ú‘vä‘Î*QGr¤LC`U£1j”ë8ëš›xVæ€jîà[ÌlJĞÑ˜×€–edcíÖ¨‡‰P1VtÂF£8%N>´ĞŞ†}Ô*w§$qšÁxÊHÀŒ×Kt§í¼cjQìl‘Ç­L‹¦ÊFsQIïÅHo €ÌsYšŞÄ+İÿ\0*±\Z—pª2Ç©m´×¹lRr{W[¦xlÛH²K8ã#½g)XÒ1»-x_DXcK‹ƒhÏ_óù×U¨ÚGwª9ˆÉñúÕ{pP…À·çWŒFXÎN¬9›:ãØã ÑÅî°!·VeFËËëÿ\0ë®î\r-aòöœª¯\\u§èúLVÈJmÜÇ5»š²Ÿ˜á{â”¤ìŒJ˜¨Uù‡J¿š@Á\0ã5}-â¶aŒØÔ“\\æ \0yæ¹İÛ7ŠĞdZt~_zÕ{ô²±µcpËÏJç|Eã˜´¨LvØ-\\š–±âëÆó%òâ^„Ÿç¤i»ÜÆ¥^†æµ.wp;€—8ÛÇZÑ¹…#¶CR˜ë?úÕ†m<°\Zo:N»úV­Ì?cÒ£‡\0şußJVĞò«£œñŒÛ«ªüàõÏ5Ëm-Ïzêµ×Øü€»·5Ë;Àş•Ğõ2€Ò>^¼Ó@\'©¥,h îâ™b‚ÙÇZkg9ïOÃg#ózÓ¸ÈÇŞçƒCŒõàúÔŒ	åAü©Œ3ÔT‹¨Ğ~|~TİØ=)@ƒÓ…U‰Ës@ËJ¿¼ãùf®j|Ü!;”dÕ076Goz»zUŠg–‚\ZÔ¨ƒ¿N¿Î¦P$ qL?) óBm\rR1Ì£ÌbÈí¿o~•T¿ÍÆjÍ™&ú0£’qÍ=Æ^^¸ÇùÕ+Øks¢´o¥ÓgƒœÔQÁö¹)÷›QS!Ãs“+µ°=jHÔ»m+Î}k§Ô¼<6Æh›q,3\\í¾V`Ë´òjçº¾‡Z‹êuz6œU¢‘Î\0\0€;×FÒÆØƒ‚ÕNÅCZÇÓ¦µSÔËÍ(¶‡p,~¢²¬Ö;ïuÔ¶—d_¼l÷¨âñ5ú§ä÷O5wHĞ­ìmL—Ä4§œŸJ~¡®ÛZ¶Ö‚wA\0æœRlÌ>6Õ­äÂÄuåk_Oñ¶£,cp\nsÈÅ`E¬\\ë—VöĞ‹pgr®‹*>•¹y¢6™ªuu”I½ª¤•‚\r¶oÚx¦K“‰IéÇJ—TÕåÌ?U+í.@*­ÆzWam¤‘å)8#îô5Çus²<Ü§ê‘¤Ç5üŒ‘É“¿¨«~Ğ¥ÖtkÙüÿ\0,Äø·Ø¸Şs}z\nìÃl±˜¦Œ\\D¬pŒ8¥¦isàE°çh\0u5¿´I{&Ş§7áß\rêVwGío\\ç5Ò]øzëRÜöQy’\"ÿ\0/<sı+¤´ÓÁäã’ET×\ZöÊÎWÓ¥h¤Æ§|ÿ\0ŸÖ¦•OxšÔ½ÓÊ¼IÃ`‹°¬ˆpßQŠäğÁ}OC]vº’ı„‰‰.†ÜrsŞ¹ J³uë^¤lÑå¡À¤÷¦ Ô›°9îi	r3EË:ş4ãÔcùÔmœäSC0aš@=›<E4QCdœšV\\{Ñp\"e<í¤äÔİò8¨÷©ëEÀÑsı™®c‰;]Âä)÷Å>ñ•­íÊ‚>_ÿ\0Wé[Öb[¸¬G—op<¹à<àgïY7Ğ¬V1mì8úRL™]35\\ïçëÒ­FŠA$Ÿ¦j·GçœŸÊ¬$Ê[{ãõÅ0Ü\\sÈüjÅ¼^]älA8eè3œô¦#§œ»yäp;û~•ß§€î.-´Ë­2X¦x‹½¸?8Ãr>˜­@±ÂêˆF¡  ğÄtÅ\\ğ¼)&½a‘y§øˆãS“Í`v·ËŒÁŸ¦_-¦«Sƒ¸sSQèË¥ñ#Ón,`w“Ç`:×™xIÚğO\n…¾aøŠôû—K}óÔšæ¼k£‡Ìˆü¸$àg5æ&ùZIrègi%^Ö2yÈë[‰§@ÄJ«óœ“\\öŠûmÀÈù°>•ÑÇ3£ü)É»‘.m\Zçäwa˜¢ÃCç	ò0N3Áö<v­˜-øÜGz½•9¬ùÚf¾Îæ4Z-…¤Ïug¥Ë³ªõÏ_§SÓC§¶ó4ÊÌÙÎ[šêíô…ã¥YÌvú}(u.’9d\\òËœ~µÑi7F2 øÖDÆ8æ óƒV,¤Ä  ä°ÏçX7©¼Q»(0\\)À*ZĞŠ(Übª¼M=’¶0ÀqTÒy-åÚ§>ôkp6å_!à§½r~+”Ë¢Ü…!Nƒ]ºä­`ëàK§H¸à©ííZÓøŒ+kxûŞ3[˜§œú¶On¼ÖiXÕ²_5£uRàŒMfÏš#@Î\\à`w¯b;µTç\'íMm»ñœïK xË¬ÈU‡PzŠƒ~O?\"]É»j\'l?L\naİ¿äŸzĞşÊ¸XV@¥³ÏLÑpÛr‹7Ì03*FÚFĞ	&¯ÛØD$V»ùœjšqmcr“Zv‰ƒ¨\'ƒEÑÚ™2G¶26•[\\…?…všö…\0ğ”:á¾‚KÛ©0Öñÿ\0s&âæÏ¸ŒšEÜ›ÃQ-¶±\nÂ+ŒFÀEiê6nÍåHv´nQ†?Ï¥I¢ØA¨êqYK\'ÙŞQ•“¦Öõ÷ÕÒøËE’ÉbÕ‹#$Ò4˜Î@u<¶}5<Ö2»g4ÀªpÙ9şf¡–ÅãhÙ3‡#Ó¡«ÑJ%¸İŒåGnEZ‘˜(m½óK˜[ãK)\ZÊ„îP2=}³Z6·úßŸovğÌÊ¸<ã\0cÛŠd³3©PJ÷‰×k9,}q‚j¹…v&¯òÉ½äîä–ä“ëYH¦]ü‚q[·cÌUÚGaYßa,ÇÍR9ãŞ“Õgs²Ğu=¨X\\\r¼rjıüÏ6‰42[ù¥¿Œ‚¸[K¦Ó5H‹`x•ØGy.Á‚pFqœşuÇ(ò½RNhÙœÍ€)tTŸ0ùq]»\0Ã\'¥R¹µh¥k¬	ç#­6;œÈ§¶qJ›_SEdÎ¦ŞUïZÖòŠæâ—€Pg©oq“ÈÁ_CÖ±’:¢tq8íÿ\0ë¤¹Lã×ÜV|9`3Àè3RÌşhÆù\"¥DĞÆ£\\—¦jt¸‚\'Ê=éó@„ÕL.søU(Ü‹ÛcVM}R&3–ÇaVlí\ZK6S‡=01XÖ¶Š“™AÈã\"µ%ºò@ùÕ@è3IÇPŒ­¹*HÉÛsTµ9sg6ºi^ë,\0Œã#š¯©bKFùˆİÇè¦Ÿ1•i{¬òÛ‘¸;r~|ƒŠÕğ­•«––ä+ÌeÉé“‘Yn¯ÙÓtdH÷«Öù,ímôõÇ¥zğ–‡6îeø…TßÍ$xØ[°ü+‘»¨àŒWTÓ$²ÙAÉçŒf¦Ó´;9DŒÅv£aKuõ£™\\!-4ò7·û5Ñéš¬1Zİe‘‹œSÜÚZZLë`îÆ¬ûq4ò|ÁQ	#ëş,Ò÷\"Ô%¸b±G„#9ªQ¢IqcŠÁ;³Ş”…[¦p®*ÕµÔ9òûŒuŸ1Ë·µ–=êà,G·ù5wû=&Pò±ÜG<fƒn÷¼Ñd)æ´maíÔ»ıqBcÔçWUY-—Ûp‹…*zWgá+É5†zí•à3M†e,s‚NMÿ\0\nmDkq-Ô¢<õUÀ5Úhº™ h7vÖ~d¦ãrÈîsíŸz­\nOSÌ<;Wz·—lØu\\‘Ğ•Ö¾”û‡îÎ:òµµğ÷HÒdÒÍÌĞ¢ÜÅ;#È:òzšîMÒW•˜Œä“ÉæšIS-‚£sÍşíW’ÎgPDG§ì©§èLBËär}ªptKT¥ªrËœçš´O!â\r‰´2câ¦k_1A(ƒ×Ò½UÑæ9k[ÓåªséúDÊ@±AËÆhbqìyL¶6ØÖß:şœŠµ¢c+¸¸ğîÄìÀ¬é|#’f3 ôâ³åLp”¢Îjşo>Õ¢#åÁÁ¯ùæ¹«gÙ)Y	Ïõ¯@¸ğ}Â¡0JF;\Zàµ¸N×¥±r<ÈğHúÔ¸¤ˆUmØİµ”ğÒµ#¤Š3Éë\\íŒä£ùÖ¼r°##­pËsÓ¥+£ZH—õa®¼ŠÎw*+¹	\0/\'µ(´Íµ-=ĞŸ›ëš¨×±Ç\'Ëó7ÓŠ¦lî·3’^jÅ¥¼QÈD±äzµªHIÓW\\*ŒñQ_i÷w†yö1?(üûUÓ5´ÃÌzœÒ$ë4€ñ‘Èˆ¢VBh‡N³º³‰EÄ×hÁ5&³t‰m€G·=+Eˆx¶°ù@ôé\\>«ªÄoÚÙ‰,„£Ö¢²9ë»D&·I]SÓÒ«‹‚Rà‚¬0iÃT‚$PÑK¹IÉ#Şöø&%”v½‘ãI6Áôõf\r=óÍW’ÔK7“nüÕ„¸ƒr€í×±§“Iæ¦¹5:\n)Ü’\r#æ_8©\nzš‚ëÃĞ¸o³J¹ï“Ûõ§Ÿ2Qóœ|w¦ÊåT~ğ‚ËƒÖ•‹KR¯ü#†Øü¬Øàæ«ç8Hê}ër\'imñ‡<6ŞµZº0c!ñÓ5f]µ½İ´BĞ˜|¸¨ãÓ®v|Ñr}MkÊIc‡\'iÅ w?ÅŸ©©&çD5yÌ\"İåo+;‚ãİª¶¥¯6›¥I2çÆz“íP[iÖ²iõLmä‡8ªz†ÕºYAs$ÅäP¡†AşµrĞÒ‚æz‡Ã­Ri¡½6æmÀg×Ö»±w.ş=³\\F•¢Rf’0Ä/L×AæÊ†=zƒE7ÌUxò=\rèç•˜gš¹\Zï`€=ë›K™	áÍL³;9&FÍlaBÄ¹uüêÜ>Ha’¿r\"w\næ?Z•.Ü‘’iÎ®vêÖËÔ#sR»0Àyk\\XºrzŸnjO:mœ¾)¤à\\Yí%‘Us×õÊ¾dñF§ı«ñ;R»P6©\n\0=…z§ˆuitây&acBÜ±8éøf¼O»ß¯ù·+áÎ{šÊFôõg[ÏÂ `qšİ´»YãS‘‘ŒûV0‡É¸òHS’§Û§”–Í²œ®y­sèÎø]NG~ô¡ËI—¬‹kß7ÒCZqÊ¹ÜïYJ:èmUòqI)ÊŒnõàÒÄª>n¿şº›tc\nqœ…$še]ÛiİÈÛh\'Ö„\ZZÛ¶wg‘ĞU+Y QåøzÍ½ñ…§t˜ÀUç\'ıjvrd¹¤t7¨ÓF––² bÁ7zõşUåù·²ÀºÛäz½¨ëz³kbâ)Í»Úÿ\0«Ç=G_Ëµd¾«W’ÌÑH%•ËHÊ~ùşk¢>]YÅV§1ÓY]‹Å	(]ñğÁ‡½YÂ²ñ¦	Àâ¹[mSOkÔ¸šy¢d?tÇ¸¨üuøƒN½¸Š4ıÒºŞ²ã\'¿Óšé¹ÀÓ¸ù©*Zİ@ûõ¦îÓÔH¬ØWKmá¸µ[TšÎâÚqĞí“îš¯sàû¸‰\rlÇŒ‡SÁ¬ÛÔj,Ì6ºA‰š)d\\ã\'ëXÒYËs È¬ÎqÎ3[ÃÃ·Q¾<–ç’}\0ÿ\0&s¡L:ïOªñùĞ5£2’{ûhDÕéÇZ­qwräµÊ0\0q°g+e´‰ç¯\\R ¹‚t‡j#IƒÁ$`ÒHlÌ³¿C1S‚0IÜqZQM&T!µYŒ©Eƒx\'æAı{T±Îˆ˜6êOûkÍ2,e­ÈAbW	§Úß}ŸU´”Ü¬[%V- $zõí\\öŞ\\b«ßjqß|}ÿ\0úÔÚ¹¤Lõùo,§×$¸±¸·ä€y\0Æ~½¿Yb üŒ1Ÿ_zóêM­äH—sÎ+ÓŒa”èG¥ĞU[“\0û9\rúÒ‹œ8ÁÏ4ß+iÀRˆÀlZ«œÍ‹†\'\'?…=.¾nøÏzj>Ş<Õ•òØŒŒ\ZwcHì–À$ú’ÚØ½ÌÅV8ÆâXÑ!·‚vXâO¼ÌqŠò?x¾]rá­m	KDé7QsHE¶AâÏ¯êÓHî~Ï*Š\rÈÿ\0ë×9$eH,zzóíLY[y÷=jYÔ(æ¥êt¥fw>Õ[²[9p.íÔ2o=?*ÖòÛ$\\2õ•åö—w·‘ÏkòKdsş~•éz^¯câcpÂÕ^&8İù<W<è½ÑÑNzêM>$ıä\\7lUI!»·û¹e^Şµ­²X¤¨SœgïNÉF}8¬“ksªÊ[‘kÅ€Ñ7Æ•µiY€HÛz{ÕçUn ­68Ô?AŠ|ÈÏ’E8¬¯/ˆ2“\n÷Áæµìô»=67¹ÀyòÏß‘L7¡ËzóU5-T>–c+3àdãŠ#yJÈ9m³›Õç]^Y#UÎO¦3Y›A˜oÛõ#5=Ô‚MJpŸŞeY·ÑÚhÚG”tÈ\0×]¬¹É„ª ‰w(Å2XÙQ]FY•=Ü^VáN~µ³é<ÎIÏ-I±%®§{hÀÚÈÑüÖİu›gÚ×\"ÿ\0tšÁ„ÆÑsÃŠ–Q(É¢ÁÌz—Åt‚ßmî%Ncb2:àäwàš½Å-.vÙ=ƒıî¸¯6’3‚0@©VĞ\0\n®@>)[RnzÍŸˆ|1«Æ741I×/öF•3†@Gb­ÇQ^? NXŒ7~qNƒRÔìşk[—U#‘×<*¬+¨4( ™†åÇû}ªÖ‰Îsgpk’Ó|wyÊ—Ê²¯ñAù®ŞßX³¹eÔ†ö¦‰¹ó\nÉÍ/›óóš‡¡¥İóuªĞÜè¼($ˆ4›K©\n0NO¥z®¤Ğm¶‘rT`œû×’xTíñ»çÊ½HH¿hVäí9¤a7fn½A\n@4õˆméO‚æ;˜Æ:ã§¥8ğ§$h[‘¹·*ùíìi&–;H^y\\*/RÍŠKıJÓM·’{™è3Ôı+É|MâÛÍjé’vÀ¡;šor£Ë>+ñ}Ş³+[ZÉ²ÌŸÅÈëëÓù×3¼ubO|â£Sœã€LõäRä09¦tF6$U;ƒtÅKüu=ê494ğ»Ni0(²ÙØpZ“sÛÌF\nœ\ZGÃ\'ÏZ’5YmJÿ\0\Z•¥-]™,ê4ïjIj-®JİGŒd¡õ±câåùeÜı£šálÆ ô«ûq	¯Cêp©ØÎ8—cÑ D»â6Éô¬fKù¸ü+Ï,u{½>dØÄ÷Á¯HÒµ…Ô´WrA•G#½x¸Œ$©êJ\"5™,™†8èx®{ÄÚ1±Â± `wäWNùmÄw`õ®_f:‹+)àáÌõ&¼¬´\"È®£ â¦ÔnP¥”‘Áõ2DSÕzısZN%¢É*oÈÀ®ªñågŸ\\än­ä„‚Ç!‡µ45’{£9^Ç?v™0ûe¤™R»[+WtDÑVIÛfóŠÁYš\\’XšÓPkrwwg¥hZÅ¹Æäö¨¼Al\"^Z8|¯$¥:Æí¥Úƒ\0€9¤Ö¤2ìÑˆ%	«ùe\0¸ô\" ‘_‘Ô\Zp+ç(<f‚nE8Xæ\"Aß·Ö®ĞÖ’õwßF£8Ç?Z¶m¼§³ÿ\0U03/­¿:3E¼óGĞËÔõb+L&ùÄÉÀÅd\\C5´ízÔ„Ï;û<¯0A:\nc#G)IVÆ…d/õXÑ·\0$Vş«á[Km>{ÌÎ=øji}L?yI®Û	u¯N2Û¤„ª0çLW“éÍRÜ®NÖ8ë^­r§ÊGQ´gµrW,[\\7šlsÉİ€+7Ä^.]-^y<Ëœçm`ë>\'ÇÈ´9~ìGC‘ÓŠã®.¥¸¸i&9vş\"I&„8A–ou‹Û†šæBò1îúÕQwr¡üi¡AÉîM8N3Tlâ€}ßZP€ciàóÍL©Üôª(y<U…eá\\ıj4ÌœyJN:ÔÓÆ¬0Ñá‡J]IªÑmS‘ê*;s²à½p3õâ–Ù:“ĞjÆÅÎåê?úßáUZBb…Û#.03ùÓ¥Ü¤*±#<špsòúÔè›†Í{¸gÍz;‘YÛ™O=+¨ğÕêÇtabÀ¶HÇJ§¥øoQÖÕ„Jå{f®¿„uİ$¥ô¶‡Ë™6äœ}+›RœaÊ÷5¡w+£¨TÚÄÔzb¹ßhæe3Â¼ã<väVÅ¦§ıºI\nã%IäqV\'Ù<E1Ó8÷ÿ\0ëWB§$ô=j‘æåñJRp›ìÏzÒº¹a§à•Oñ§øƒM‚Åcš2w’xÿ\0?J§8İ§œ}ÜgµéT÷ãsÌQåve½=–dUÀ*W¸ªz³¼¹…P* ãëW4?.HÑAÁ\'¥[Õ¬Ğ.èÈç‚q\\Š×-ocMÔdA¿2“·ŸJİ‚Óı1c$áˆ+ß<×.è`¹,NyÍvº[%ÄvÓ#Wïcê?Â‡¹2DÒƒ‚+…*W‘üÔ×©¥‹€?çÚ´æ†õS Ã ãµ‘42C!·nFAÍ+™•îf?m„ ûÃ5zO4º’}j›DÒN‡Çz×X°Q²T3ïH\nğa5‘¸*1Í6ú(¤ºf9©\'R÷¸Ê‘¡Ê?:.#Îô‡“N½¤-\'Á¡{«j7–ïXHÉè½k¥‰m-É1DTûÕg|r© P9ÈÆhR5êq~ğn³{şG—\n¾IfÇJßñN½¡kKwê1¼.?iu_½›ZX6Ù Ê£ ¯?”´ZW.Äçq$æĞK4’JÅÏ,s×ÜR<Û¥5FI=}*Â`àÆ}j‘h`\0¶;v¥\0–\0T­\Zc®iì¡:Ÿ¥PÈ\n~:ÓÃ¸>Ôõ\nøÏZCßÅ43ON%ÃùyçœUÛˆVe,¡vã*ã¿Ö¨é¯˜a¸Cwñ­[>æÉÎC4N2¬9U#>¦3Ã„Æzw¦|±`“’NkRŞÀÜ9eÈ\'¯z×J…fÄË“ô©–ã¾†$Vó:ùª·5,rÀç]«ØDºrª*ƒ\\µÍ‚o,b½LT´8êjËş×&Ñu¨¥RÂ8“ßçù×¸ÛF/lâ¼„¬N¿(=³‚Gáıkçw‚XdFN1ƒ]ï<pÚ]ÂÚ]1ò%à®î•Ï™á\'R<ñ7ÂÕQ•™cÅ^o\rë+ªiã:eãe×´,}ûúVmş¯§›.U˜àà’y¯b¾²³Õ´™-ò$´ºMÁ“.zWÏúï‚õk?Í§JZDå¢™ò.Ex{Æ|³=i7%î˜×ÚìšÔ¤lÚ€œdr1V-röq“’x«.¶»Ç™ºEÈ8«V«åÛH={w¯£…?İEGiêWÒ.>Çª¦mŠÇ‚xÍtó h\\rF2¤ŠÁÔtèšÄ\\GşµNr*”\Z­ä)Ãî\0t&¼ÛYš¡·P;HHä‚EoxUÙ.>Í1À$c?ZÈ‚èÜËæƒG¥Z·™âÔ¡‘y<ôš»hL™ßÀ6\\İºJ‹V€lYƒ‚GãQùş`Wş\"‚§Ì–d¨Î?^+¹	™ìÿ\07LñV1Üµ»dd\Z£<¾C«vèG¡5gí^t*`ùå^A§­ Jäê“†,»Êõÿ\0^¥7óŒBk®¤†MÓÍ´w^ôå¿!FÕv¸ ,i7úÏÂ‹ŸøóóÚŠ*F0½ÿ\0ë÷Q“ï¯ÒŠ+CXˆÕ<¾´QMHß{ñ§IÔ}(¢¨dqıÿ\0Æ¥ÿ\0–ƒëE!›ïÇşñşUè_ò\'/û¢Š*Ñ,Çë_ëWãû¢Š*&OCR/ø÷ZÇÕãå¾´Q]8OŒç–ÆsıÃUìÿ\0ä ¿‡óQ^ıOàœôş#Ş¼ÿ\0 ÿ\0®kü«?â/ü~Z¸ßÒŠ+âjÿ\0÷ğÿ\0â‘Çã}Z¦“¿áEô´ÿ\0„y•¾2uÿ\0çXSıïÆŠ+É4DVŸëŸıá]‘ÿ\0!èè¢«¡2;1Õ\Z?øö¢ŠçêdwSêßQüéš_ú·ú\n(¦·4‰NëşBıêÛ‡ıX¢Š:”ÿÙ','image/jpeg','137.jpg');
/*!40000 ALTER TABLE `st_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-13  1:54:13
