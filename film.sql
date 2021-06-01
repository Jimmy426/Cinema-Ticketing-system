/*
SQLyog v10.2 
MySQL-community : Database - film
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`film` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `film`;

/*Table structure for table `film_type` */

DROP TABLE IF EXISTS `film_type`;

CREATE TABLE `film_type` (
  `film_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_type_name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`film_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `film_type` */

insert  into `film_type`(`film_type_id`,`film_type_name`) values (1,'Romantic film'),(2,'Comedy'),(3,'Science Fiction film'),(4,'drama film'),(5,'Thriller');

/*Table structure for table `film` */

DROP TABLE IF EXISTS `film`;

CREATE TABLE `film` (
  `film_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_name` varchar(225) DEFAULT NULL,
  `film_pic` varchar(225) DEFAULT NULL,
  `film_type_id` int(11) DEFAULT '0',
  `film_price` double DEFAULT '0',
  `film_actors` varchar(300) DEFAULT NULL,
  `film_date` date DEFAULT NULL,
  `film_scene` varchar(300) DEFAULT NULL,
  `film_score` double DEFAULT '0',
  `film_desc` text,
  PRIMARY KEY (`film_id`),
  CONSTRAINT `fk_1` FOREIGN KEY (`film_type_id`) REFERENCES `film_type` (`film_type_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `film` */

insert  into `film`(`film_id`,`film_name`,`film_pic`,`film_type_id`,`film_price`,`film_actors`,`film_date`,`film_scene`,`film_score`,`film_desc`) values (1,'Don't Go Breaking My Heart 2','1.jpg',1,88,'Gu Tianle, Yang Qianhua, Zhou Yumin, Wu Yanzu, Gao Yuanyuan','2021-06-10','13:20-15:10',4.33,'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;Cheng Zixin (Gao Yuanyuan), who is about to enter the marriage hall with Fang Qihong (Wu Yanzu), is full of happiness. She encounters Yang Yangyang (played by Yang Qianwei), the most admired stock market woman, so she recommends herself to join Yang´s company. Coincidentally, a book is written, Zhang Shenran (played by Gu Tianle)´s company is just opposite the Yangyang company, and the two have become boyfriend and girlfriend friends because of an encounter. Duck Yang, who has a big and bold personality, knows Shen Ran´s frivolous behavior, but only adopts the reverse operation measures, hoping to become Shen Ran´s last woman. Zixin´s older brother Cheng Zijian (played by Zhou Yimin) is full of romance. He encounters the lost ducks and ducks. The magical octopus "light god" makes them good friends. Zijian´s affection for ducks and ducks is also increasing day by day. It was finally Shen Ran´s birthday. Who knew that the party turned into a catastrophe. Shen Ran in the chaos was also surprised to find that Zi Xin was not far away. &lt;br /&gt;\r\n&lt;br /&gt;\r\n　　The fire of love that has never been extinguished is ignited again, and the love war between three men and two women has entered a white-hot stage... &lt;br /&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'),(2,'Breakup Buddies','2.jpg',2,120,'Huang Bo, Xu Zheng, Yuan Quan, Zhou Dongyu, Tao Hui, Yue Xiaojun, Shen Teng, Zhang Li','2021-06-10','13:20-15:10',4.5,'&nbsp;&nbsp;&nbsp;&nbsp;Geng Hao (played by Huang Bo) encounters a crisis in the "Little Three" and is in an emotional dilemma. In the face of betrayal, Geng Hao fell into an inextricable pain. In order to help him get rid of the pain, his good friend Hao Yi (Xu Zheng) decided to take him south to "hunting beauty" and visit "Hundred Flowers". So the two "runaway brothers" took a dog and embarked on a crazy and funny stray journey. Along the way, they met all kinds of female partners and experienced a series of strange encounters. In the end, the two finally understood the true meaning of love and reaped each other's happiness.&lt;br /&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'),(3,'Dawn of the Planet of the Apes','3.jpg',3,88,'Andy Serkis, Jason Clarke, Gary Oldman, Keri Russell, Toby Kebbell','2021-06-10','13:20-15:10',5,'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;Ten years ago, human beings paid a heavy price for their stupidity. The deadly ape flu virus spread all over the world, and the world was wiped out. In the primitive jungle adjacent to San Francisco, Caesar (played by Andy Serkis) led the orangutan partners to build a carefree kingdom, until one day, the tranquility of the orangutan's home was broken by humans again. The human beings lingering in the old city are facing an energy crisis. They try to use the power station of the dam in the forest hinterland to provide energy. Young scientist Malcolm (played by Jason Clarke) tried to persuade the head of the gathering place, Drivers (played by Gary Oldman), hoping to obtain the trust and consent of the orangutan tribe through peaceful means. However, Caesar's good ally Coba (played by Toby Kebbell) can not get rid of the hatred of humans, he tried to challenge the authority of Caesar. &lt;br /&gt;\r\n　　Humans and orangutans, both sides are cautiously testing, and war is inevitable... &lt;br /&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'),(4,'Kung Fu Jungle','4.jpg',4,21.6,'Donnie Yen, Baoqiang Wang, Caini Yang, Bai Bing, Fang Zhongxin, Fan Shaohuang, Shi Xingyu, Jiang David','2021-06-10','13:20-15:10',4,'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;The Hongquan martial artist, the titled Southern Boxing King, was violently killed on his car in the tunnel. The body showed no signs of knife wounds or gunshot wounds. He was preliminarily convicted of a heavy punch. The Chief Inspector of the Crime Squad, Lu Xuanxin (played by Yang Caini) was responsible for the investigation. I was puzzled by the cause of death; at this time, he received news from the prison that Xia Houwu (played by Yan Zidan), a prisoner who committed manslaughter, offered to assist the police in the investigation, provided that he was released on immediate parole. &lt;br /&gt;\r\n　　 "Practice fists and legs first, then use weapons to capture, from the inside out", Xia Houwu asserted that the murderer's purpose was not to seek revenge and would continue to commit crimes. Sure enough, the martial arts elites known as the king of the north leg, the king of capture, and the king of weapons were killed one after another, all of them died under their famous martial arts. After receiving clues from Xia Houwu and the antique hidden weapon "Tangqian Yan" left on the scene, Lu Xuanxin finally found the murderer's hiding place, but Xia Houwu suddenly disappeared in violation of the parole order. &lt;br /&gt;\r\n　　 Two martial arts murderers are at the same time at the same time, are they friends or enemies? When the two heroes meet, a peak duel is inevitable. &lt;br /&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'),(5,'The Hunted Cinema','5.jpg',5,74.5,'Liu Yanxi, Luo Xiang, Wei Xingyu, Yu Miao, Tang Chengjing','2021-06-10','13:20-15:10',5,'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;Actress Xia Meng died unexpectedly while shooting a certain horror movie. Director Lin Xinya (played by Liu Yanxi) felt guilty and had various hallucinations as a result. When Xia Meng's lovers and friends held a commemorative event in the cinema, Lin Xinya actually saw the dead Xia Meng! &lt;br /&gt;\r\n&lt;br /&gt;\r\n　　All sorts of weird events happened one after another, and everyone vowed to solve many mysteries...&lt;br /&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');


/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `info_title` varchar(225) DEFAULT NULL,
  `info_content` text,
  `info_admin` varchar(50) DEFAULT NULL,
  `info_date` datetime DEFAULT NULL,
  `info_pic` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `info` */

insert  into `info`(`info_id`,`info_title`,`info_content`,`info_admin`,`info_date`,`info_pic`) values (1,'No. 2 Hall is temporarily suspended','&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sorry to inform customers that because the screen in Hall Two is replaced and upgraded, it will be temporarily suspended for one month','Admin','2021-05-31 15:49:22',''),(2,'Sign up for a membership','&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Starting from today, registering members will have half price, and members will also have the opportunity to enjoy the half price of offline tickets and other benefits. The deadline for the event is June 10.','Admin','2021-05-31 15:53:02','');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(200) NOT NULL,
  `real_name` varchar(50) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `user_sex` int(11) DEFAULT '0' COMMENT '1：male 0：female',
  `user_age` int(11) DEFAULT NULL,
  `user_mail` varchar(50) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `user_type` int(11) DEFAULT '0' COMMENT '2：Admin 1：user',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`user_pass`,`real_name`,`nick_name`,`user_sex`,`user_age`,`user_mail`,`reg_date`,`user_type`) values (1,'admin','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Yibo','YB',1,22,'15888888888','2019-01-01 23:08:39',2),(2,'limei','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Limei','Limeimei',2,22,'15888888888','2019-01-01 23:08:44',1),(3,'liling','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Liling','Lilingling',2,22,'15888888888','2019-01-01 23:08:46',1),(4,'chensheng','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Chensheng','Chenshengsheng',2,22,'15888888888','2019-01-01 23:08:44',1),(5,'lichao','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Lichao','Lichaochao',1,24,'15888888888','2019-01-01 23:08:44',1),(6,'zhangbin','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Zhangbin','Zhangbinbin',1,24,'15888888888','2019-01-01 23:08:44',1),(7,'zhaohui','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Zhaohui','Zhaohuihui',1,24,'15888888888','2019-01-01 23:08:44',1),(8,'zhangweiming','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Zhangweiming','Zhangweiming',1,24,'15888888888','2019-01-01 23:08:44',1),(9,'likunlun','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Likunlun','Likunlun',1,25,'15888888888','2019-01-01 23:08:44',1),(10,'lijing','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Lijing','Lijingjing',2,21,'15888888888','2019-01-01 23:08:44',1),(11,'zhangyongle','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Zhangyongle','Zhangyongle',1,21,'15888888888','2019-01-01 23:08:44',1),(12,'xiaoming','4cb0a5502e9aa44a0ca99e96742f2e788aad875a','Xiaoming','Mingmingbaibai',1,23,'15888888888','2015-03-30 09:38:16',1);


/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `film_id` int(11) DEFAULT NULL,
  `orders_count` int(11) DEFAULT NULL,
  `orders_date` date DEFAULT NULL,
  `orders_flag` int(11) DEFAULT '1' COMMENT '1：normal 2：refund 3：expired',
  `orders_seat` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  CONSTRAINT `fk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_3` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`orders_id`,`user_id`,`film_id`,`orders_count`,`orders_date`,`orders_flag`,`orders_seat`) values (1,2,1,2,'2015-05-19',1,'1-1,1-2'),(2,2,2,1,'2015-05-19',1,'2-5,2-6'),(3,2,3,1,'2015-05-19',1,'3-4,3-9'),(4,3,2,2,'2015-05-19',1,'4-8,4-9'),(6,2,1,1,'2015-05-19',1,'5-7,5-6'),(7,2,1,2,'2015-05-19',1,'4-7,4-8'),(8,2,2,6,'2015-05-19',2,'6-4,6-5,6-6,6-7'),(9,2,2,2,'2015-05-19',1,'6-4,6-5');

/*Table structure for table `sblog` */

DROP TABLE IF EXISTS `sblog`;

CREATE TABLE `sblog` (
  `sblog_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sblog_score` double DEFAULT '0',
  `sblog_content` text,
  `sblog_date` datetime DEFAULT NULL,
  `sblog_pic` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`sblog_id`),
  CONSTRAINT `fk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_5` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `sblog` */

insert  into `sblog`(`sblog_id`,`film_id`,`user_id`,`sblog_score`,`sblog_content`,`sblog_date`,`sblog_pic`) values (1,1,2,5,'Great movie!……','2015-03-09 00:51:55','images/head/01.gif'),(2,1,3,4,'Great movie!','2015-03-10 00:52:00','images/head/02.gif'),(3,2,4,4,'Great movie!','2015-03-12 00:52:04','images/head/01.gif'),(4,2,2,5,'Great movie!','2015-03-20 20:19:11','images/head/02.gif'),(5,1,2,4,'Great movie!','2015-03-30 10:03:43','images/head/01.gif'),(7,4,2,4,'Just soso..','2019-01-28 23:36:32','images/head/02.gif');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
