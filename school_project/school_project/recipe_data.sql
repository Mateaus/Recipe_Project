-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: recipe_data
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add recipe',1,'add_recipe'),(2,'Can change recipe',1,'change_recipe'),(3,'Can delete recipe',1,'delete_recipe'),(4,'Can view recipe',1,'view_recipe'),(5,'Can add profile',2,'add_profile'),(6,'Can change profile',2,'change_profile'),(7,'Can delete profile',2,'delete_profile'),(8,'Can view profile',2,'view_profile'),(9,'Can add log entry',3,'add_logentry'),(10,'Can change log entry',3,'change_logentry'),(11,'Can delete log entry',3,'delete_logentry'),(12,'Can view log entry',3,'view_logentry'),(13,'Can add permission',4,'add_permission'),(14,'Can change permission',4,'change_permission'),(15,'Can delete permission',4,'delete_permission'),(16,'Can view permission',4,'view_permission'),(17,'Can add group',5,'add_group'),(18,'Can change group',5,'change_group'),(19,'Can delete group',5,'delete_group'),(20,'Can view group',5,'view_group'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add content type',7,'add_contenttype'),(26,'Can change content type',7,'change_contenttype'),(27,'Can delete content type',7,'delete_contenttype'),(28,'Can view content type',7,'view_contenttype'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$SObyTj1fUor7$vd8/33ISdiOhGm/XNVIlK0A23DcEeYqaX34TTercllo=','2019-04-17 17:33:06.639787',1,'GuardedLogic','','','charlesgarza2015@gmail.com',1,1,'2019-04-16 17:15:22.003905'),(2,'pbkdf2_sha256$150000$J3kKv3Du2dKU$px6q+jwE29XiojVbwL/93LAdqWmnfPzI77TNAdrDGGw=','2019-04-16 17:22:17.132815',0,'RowdyRoadrunner','','','rowdyroadrunner@utsa.edu',0,1,'2019-04-16 17:21:37.589977'),(3,'pbkdf2_sha256$150000$ejSD7IS4rLFP$1rlTgWHqfDQpWQwSFpme1+JrhchZtj6R5ejhMvvK1PY=','2019-04-17 17:27:25.418057',0,'TestUser2','','','testuser2@company.com',0,1,'2019-04-17 17:27:18.049339'),(4,'pbkdf2_sha256$150000$jMPSExwIPvyZ$K3hgcWUGIV1b7GIh4NU7Cd+UoiVPjEjawGb1hvBSQvE=','2019-04-17 17:39:10.211474',0,'TestUser3','','','testuser3@company.com',0,1,'2019-04-17 17:39:02.574006');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(5,'auth','group'),(4,'auth','permission'),(6,'auth','user'),(7,'contenttypes','contenttype'),(1,'food_recipe','recipe'),(8,'sessions','session'),(2,'users','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-16 17:13:16.677748'),(2,'auth','0001_initial','2019-04-16 17:13:17.048680'),(3,'admin','0001_initial','2019-04-16 17:13:18.355526'),(4,'admin','0002_logentry_remove_auto_add','2019-04-16 17:13:18.664579'),(5,'admin','0003_logentry_add_action_flag_choices','2019-04-16 17:13:18.680164'),(6,'contenttypes','0002_remove_content_type_name','2019-04-16 17:13:18.963388'),(7,'auth','0002_alter_permission_name_max_length','2019-04-16 17:13:18.989814'),(8,'auth','0003_alter_user_email_max_length','2019-04-16 17:13:19.021796'),(9,'auth','0004_alter_user_username_opts','2019-04-16 17:13:19.039463'),(10,'auth','0005_alter_user_last_login_null','2019-04-16 17:13:19.161045'),(11,'auth','0006_require_contenttypes_0002','2019-04-16 17:13:19.170318'),(12,'auth','0007_alter_validators_add_error_messages','2019-04-16 17:13:19.185334'),(13,'auth','0008_alter_user_username_max_length','2019-04-16 17:13:19.215683'),(14,'auth','0009_alter_user_last_name_max_length','2019-04-16 17:13:19.244896'),(15,'auth','0010_alter_group_name_max_length','2019-04-16 17:13:19.271618'),(16,'auth','0011_update_proxy_permissions','2019-04-16 17:13:19.286593'),(17,'food_recipe','0001_initial','2019-04-16 17:13:19.364423'),(18,'sessions','0001_initial','2019-04-16 17:13:19.563291'),(19,'users','0001_initial','2019-04-16 17:13:19.700046');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('p9zsdcfrh2ks1j9fnfmjty9gr4y3bmr4','MjIyMGY5ZWMwNTg3NTc4M2M0MzVhYTVhYzM4ZTFmNDU4MzhmZjkxYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMTBmODc5ZjE5NDI0MDUyYjIxZmE0MTY3MjdjNDQ4MmFjOGQ3Nzc4In0=','2019-04-30 18:05:19.692723'),('uilkjnl7rry2s0zzc7c123pxj41tho11','NmZiMjZjY2M4Njg1ODEyMWJmNjRjNDM2ODJhOWI1ZTlhN2EwNzc1Zjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NGJlZDI2YmIzZDgxZjVjZTk4ODI1MWU1YjJhMGIyNjQ2MWRhNTUwIn0=','2019-05-01 17:39:10.237951');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_recipe_recipe`
--

DROP TABLE IF EXISTS `food_recipe_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_recipe_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_image` varchar(100) NOT NULL,
  `recipe_name` varchar(100) NOT NULL,
  `recipe_content` longtext NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `recipe_author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `food_recipe_recipe_recipe_author_id_d5e93250_fk_auth_user_id` (`recipe_author_id`),
  CONSTRAINT `food_recipe_recipe_recipe_author_id_d5e93250_fk_auth_user_id` FOREIGN KEY (`recipe_author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_recipe_recipe`
--

LOCK TABLES `food_recipe_recipe` WRITE;
/*!40000 ALTER TABLE `food_recipe_recipe` DISABLE KEYS */;
INSERT INTO `food_recipe_recipe` VALUES (28,'https://images.media-allrecipes.com/userphotos/300x300/2241102.jpg','Basil Chicken over Angel Hair','Cubed chicken breast is simmered in a peppery tomato-basil sauce and tossed with fine strands of angel hair pasta.1 (8 ounce) package angel hair pasta\n2 teaspoons olive oil\n1/2 cup finely chopped onion\n1 clove garlic, chopped\n2 1/2 cups chopped tomatoes','2019-04-16 00:00:00.000000',2),(29,'https://images.media-allrecipes.com/userphotos/300x300/1017268.jpg','Quick Fish Tacos','Tilapia fillets are pan-fried in a jalapeno-infused oil and served with a quick cabbage slaw. For a milder flavor, remove the seeds from jalapeno peppers before adding to the slaw.1/4 cup reduced-fat sour cream\n2 tablespoons lime juice\nsalt and ground black pepper to taste\n1 jalapeno pepper, halved lengthwise\n2 1/2 cups shredded red cabbage','2019-04-16 00:00:00.000000',2),(30,'https://images.media-allrecipes.com/userphotos/300x300/5822211.jpg','Detroit-Style Pizza','Chef John seals the edges of this Detroit-style pizza with plenty of cheese, which fries as it bakes, resulting in its signature crunchy, crispy, cheese-laden crust.For the Dough:\n1 cup warm water\n1 (.25 ounce) package active dry yeast\n1 teaspoon white sugar\n3 teaspoons olive oil, divided\n1 teaspoon kosher salt\n2 1/2 cups bread flour','2019-04-16 00:00:00.000000',2),(31,'https://images.media-allrecipes.com/userphotos/300x300/4573295.jpg','Simple Hamburger Stroganoff','This ground beef Stroganoff is full of flavor, but wallet-friendly and easy enough for a weeknight.1 (16 ounce) package egg noodles\n1 pound lean ground beef\n1 (.75 ounce) packet dry brown gravy mix\n1 (8 ounce) package cream cheese','2019-04-16 00:00:00.000000',2),(32,'https://images.mecom/userphotos/300x300/2573174.jpg','Brown Sugar Meatloaf','This brown sugar meatloaf is glazed with brown sugar and ketchup for a moist and flavorful weeknight dinner.1/2 cup packed brown sugar\n1/2 cup ketchup\n1 1/2 pounds lean ground beef\n3/4 cup milk\n2 eggs','2019-04-16 00:00:00.000000',2),(33,'https://images.media-allrecipes.com/userphotos/300x300/18978.jpg','BBQ Pork for Sandwiches','Mouth-watering pork cooked in a slow cooker with beef broth served with barbecue sauce.1 (14 ounce) can beef broth\n3 pounds boneless pork ribs','2019-04-16 00:00:00.000000',2),(34,'https://images.media-allrecipes.com/userphotos/300x300/1248063.jpg','Marinated Grilled Shrimp','Grilled shrimp are quickly marinated in a spiced tomato sauce, then grilled--either indoors or out. A big hit with company, and easy to prepare.3 cloves garlic, minced\n1/3 cup olive oil\n1/4 cup tomato sauce\n2 tablespoons red wine vinegar\n2 tablespoons chopped fresh basil','2019-04-16 00:00:00.000000',2),(35,'https://images.media-allrecipes.com/userphotos/300x300/296379.jpg','Famous Butter Chicken','Chicken breasts are dipped in beaten eggs and cracker crumbs, then baked with butter. These chicken breast are really tender and moist. Excellent flavor! I never have leftovers.2 eggs, beaten\n1 cup crushed buttery round cracker crumbs\n1/2 teaspoon garlic salt','2019-04-16 00:00:00.000000',2),(36,'https://images.media-allrecipes.com/userphotos/300x300/4458437.jpg','American Lasagna','Making this lasagna a day ahead and refrigerating overnight allows the spices to meld, and gives it exceptional flavor.1 1/2 pounds lean ground beef\n1 onion, chopped\n2 cloves garlic, minced\n1 tablespoon chopped fresh basil\n1 teaspoon dried oregano\n2 tablespoons brown sugar\n1 1/2 teaspoons salt\n1 (29 ounce) can diced tomatoes\n2 (6 ounce) cans tomato paste','2019-04-16 00:00:00.000000',2),(37,'https://images.media-allrecipes.com/userphotos/3','Chicken Milano','A delicious pasta and chicken dish with garlic, sun-dried tomatoes and fresh basil. Serve with crusty bread.1 tablespoon butter\n2 cloves garlic, minced\n1/2 cup sun-dried tomatoes, chopped\n1 cup chicken broth, divided\n1 cup heavy cream','2019-04-16 00:00:00.000000',2),(38,'https://images.media-allrecipes.com/userphotos/300x300/4557502.jpg','Fish Tacos','Beer battered cod are the star of these fresh and tasty fish tacos, served in corn tortillas with shredded cabbage and a zesty white sauce.1 cup all-purpose flour\n2 tablespoons cornstarch\n1 teaspoon baking powder\n1/2 teaspoon salt\n1 egg\n1 cup beer\n1/2 cup \n1/2 cup mayonnaise\n1 lime, juiced\n1 jalapeno pepper, minced','2019-04-16 00:00:00.000000',2),(39,'https://images.media-allrecipes.com/userphotos/300x300/4560053.jpg','Slow Cooker Texas Pulled Pork','Texas-style pulled pork simmers in a tangy chili-seasoned barbecue sauce with plenty of onion, then pulled into tender shreds to serve on a buttered, toasted bun.1 teaspoon vegetable oil\n1 (4 pound) pork shoulder roast\n1 cup barbeque sauce\n1/2 cup apple cider vinegar\n1/2 cup chicken broth\n1/4 cup light brown sugar\n1 tablespoon prepared yellow mustard','2019-04-16 00:00:00.000000',2),(40,'https://images.media-allrecipes.com/userphotos/300x300/808176.jpg','Shrimp Scampi Bake','This rendition of a classic dish of shrimp baked in butter, garlic, lemon juice and parsley, is even better with the help of Dijon-style mustard.1 cup butter\n2 tablespoons prepared Dijon-style mustard\n1 tablespoon fresh lemon juice','2019-04-16 00:00:00.000000',2),(41,'https://images.media-allrecipes/300x300/1009113.jpg','Chicken Breasts Pierre','Chicken steeped in a sweet and savory blend of tomatoes, spices and herbs.  Serve with crusty French bread to mop up every last drop.6 skinless, boneless chicken breast halves\n1/4 cup all-purpose flour\n1/2 teaspoon salt\n1 pinch ground black pepper\n3 tablespoons butter\n1 (14.5 ounce) can stewed tomatoes, with liquid\n1/2 cup water\n2 tablespoons brown sugar','2019-04-16 00:00:00.000000',2),(42,'https://images.media-allrecipes.com/userphotos/300x300/438013.jpg','Honey Mustard Grilled Chicken','A creamy honey mustard basting sauce gets added zip from steak sauce in this quick and easy grilled chicken recipe.1/3 cup Dijon mustard\n1/4 cup honey\n2 tablespoons mayonnaise','2019-04-16 00:00:00.000000',2),(43,'https://images.media-allrecipes.com/userphotos/300x300/5725906.jpg','Mini Meatloaves','A meatloaf mixture of ground beef, cheese, and quick-cooking oats is formed into individually sized loaves. They are glazed with a sauce of ketchup, brown sugar, and mustard.1 egg\n3/4 cup milk\n1 cup shredded Cheddar cheese\n1/2 cup quick cooking oats\n1 teaspoon salt','2019-04-16 00:00:00.000000',2),(44,'https://images.media-allrecipes.com/userphotos/300x300/178087.jpg','Slow Cooker Italian Beef for Sandwiches','Rump roast is cooked with Italian salad dressing mix and seasonings until it is tender enough to shred with a fork.3 cups water\n1 teaspoon salt\n1 teaspoon ground black pepper\n1 teaspoon dried oregano\n1 teaspoon dried basil\n1 teaspoon onion salt','2019-04-16 00:00:00.000000',2),(45,'https://images.media-allrecipes.com/userphotos/300x300/3508202.jpg','Chicken Cordon Bleu I','A delicious French classic, chicken cordon bleu is made of chicken breasts stuffed with ham and Swiss cheese.4 skinless, boneless chicken breast halves\n1/4 teaspoon salt\n1/8 teaspoon ground black pepper','2019-04-16 00:00:00.000000',2),(46,'https://images.media-allrecipes.com/userphotos/300x300/666133.jpg','Actually Delicious Turkey Burgers','Turkey burgers are a delicious change of pace. Slap these moist patties on the grill for a special summer treat!3 pounds ground turkey\n1/4 cup seasoned bread crumbs\n1/4 cup finely diced onion\n2 egg whites, lightly beaten','2019-04-16 00:00:00.000000',2),(47,'https://images.media-allrecipes.com/userphotos/300x300/5064992.jpg','Chicken Fried Chicken','Potato flakes are the secret ingredient that make the saltine crust on this simple chicken-fried chicken dish so tasty.30 saltine crackers\n2 tablespoons all-purpose flour\n2 tablespoons dry potato flakes\n1 teaspoon seasoned salt','2019-04-16 00:00:00.000000',2),(48,'https://images.media-allrecipes.com/userphotos/300x300/4486670.jpg','Easy Garlic Broiled Chicken','Broiled chicken thighs are brushed with a mixture of butter, soy sauce, and garlic.1/2 cup butter\n3 tablespoons minced garlic\n3 tablespoons soy sauce\n1/4 teaspoon black pepper','2019-04-16 00:00:00.000000',2),(49,'https://images.media-allrecipes.com/userphotos/300x300/5447437.jpg','Baby Back Ribs','An overnight marinade makes these baked BBQ ribs extra succulent.2 pounds pork baby back ribs','2019-04-16 00:00:00.000000',2),(50,'https://images.media-allrecipes.com/userphotos/300x300/1010419.jpg','The Best Parmesan Chicken Bake','This chicken Parmesan is done casserole style (so, no breading or frying!), but still offers up that irresistible combination of tender chicken, crunchy/cheesy coating, and flavorful sauce.2 tablespoons olive oil\n2 cloves garlic, crushed and finely chopped\n1/4 teaspoon crushed red pepper flakes, or to taste\n6 skinless, boneless chicken breast halves\n2 cups prepared marinara sauce','2019-04-16 00:00:00.000000',2),(51,'https://images.media-allrecipes.com/userphotos/300x300/3465421.jpg','Chicken Breasts in Caper Cream Sauce','A family favorite, these chicken breasts get the full-flavored treatment: these are smothered in a creamy dill and caper sauce, and seasoned with lemon pepper and garlic powder.4 boneless, skinless chicken breast halves\n1 teaspoon lemon pepper\n1 teaspoon salt\n1 teaspoon dried dill weed','2019-04-16 00:00:00.000000',2),(52,'https://images.media-allrecipes.com/userphotos/300x300/998440.jpg','Simple BBQ Ribs','Simply seasoned ribs are boiled, then oven baked in the barbeque sauce of your choice for easy BBQ ribs.2 1/2 pounds country style pork ribs\n1 tablespoon garlic powder\n1 teaspoon ground black pepper','2019-04-16 00:00:00.000000',2),(53,'https://images.media-allrecipes.com/userphotos/300x300/10037.jpg','Chicken Parmigiana','Breaded chicken is baked with spaghetti sauce and cheese in this tasty, family-friendly chicken parmigiana dish.1 egg, beaten\n2 ounces dry bread crumbs\n2 skinless, boneless chicken breast halves','2019-04-16 00:00:00.000000',2),(54,'https://images.media-allrecipes.com/userphotos/300x300/1656944.jpg','Perfect Turkey','A brine makes this roasted turkey extra moist and flavorful. Stuffed with vegetables, this bird is perfect for Thanksgiving and other holidays.1 (18 pound) whole turkey, neck and giblets removed\n2 cups kosher salt\n1/2 cup butter, melted\n2 large onions, peeled and chopped\n4 carrots, peeled and chopped','2019-04-16 00:00:00.000000',2),(55,'https://images.media-allrecipes.com/userphotos/300x300/5929454.jpg','Penne with Spicy Vodka Tomato Cream Sauce','Hearty Italian sausages sauteed with garlic and red pepper flakes are simmered with tomatoes and cooked with vodka and cream to make a rich, spicy sauce. Toss with penne and fresh parsley to serve.1 pound uncooked penne pasta\n1/4 cup extra virgin olive oil\n4 cloves garlic, minced\n1/2 teaspoon crushed red pepper flakes\n1 (28 ounce) can crushed tomatoes','2019-04-16 00:00:00.000000',2),(56,'https://images.media-allrecipes.com/userphotos/300x300/126607.jpg','Alaska Salmon Bake with Pecan Crunch Coating','Baked salmon fillets with a crunchy pecan coating make an excellent main course.3 tablespoons Dijon mustard\n3 tablespoons butter, melted\n5 teaspoons honey\n1/2 cup fresh bread crumbs\n1/2 cup finely chopped pecans','2019-04-16 00:00:00.000000',2),(57,'https://images.media-allrecipes.com/userphotos/300x300/480124.jpg','Italian Sausage, Peppers, and Onions','My family has been using this very simple and delicious recipe for sausage, peppers, and onions for years and years now. For an extra kick, try using half sweet sausage and half hot sausage!6 (4 ounce) links sweet Italian sausage\n2 tablespoons butter\n1 yellow onion, sliced\n1/2 red onion, sliced\n4 cloves garlic, minced','2019-04-16 00:00:00.000000',2),(58,'https://images.media-allrecipes.com/userphotos/300x300/1836556.jpg','Marinated Flank Steak','Flank steak is marinated in a flavorful blend of soy sauce, red wine vinegar, and Worcestershire sauce in this tasty grilled dish.1/2 cup vegetable oil\n1/3 cup soy sauce\n1/4 cup red wine vinegar\n2 tablespoons fresh lemon juice\n1 1/2 tablespoons Worcestershire sauce','2019-04-16 00:00:00.000000',2),(59,'https://images.media-allrecipes.com/userphotos/300x300/5892736.jpg','Sausage Pasta','Pasta tossed in a simple sausage, tomato, and spinach sauce is a perfect weeknight meal.3/4 pound pasta\n1 tablespoon olive oil\n1 pound spicy Italian sausage\n1 onion, chopped\n4 cloves garlic, minced','2019-04-16 00:00:00.000000',2),(60,'https://images.media-allrecipes.com/userphotos/300x300/5860681.jpg','Slow Cooker Pot Roast','A few packaged mixes make it so easy to serve a tender beef pot roast and savory gravy, all done in the slow cooker while you do other things.1 onion, sliced\n1/4 cup all-purpose flour\n1 (2 1/2 pound) boneless beef chuck roast\n1 pinch salt and ground black pepper to taste\n1 (1.2 ounce) package dry beef gravy mix','2019-04-16 00:00:00.000000',2),(61,'https://images.media-allrecipes.com/userphotos/300x300/296136.jpg','Chicken Enchiladas V','A spicy chicken and chile pepper mixture is blended with a creamy soup mixture, rolled up in flour tortillas, and baked with Cheddar cheese on top. This is an easy chicken enchiladas recipe that you will love.1 (10.75 ounce) can condensed cream of chicken soup\n1/2 cup sour cream\n1 tablespoon margarine\n1 onion, chopped\n1 teaspoon chili powder','2019-04-16 00:00:00.000000',2),(62,'https://images.media-allrecipes.com/userphotos/300x300/352934.jpg','Creamy Pesto Shrimp','Butter, cream, Parmesan cheese and pesto converge into a luxurious sauce to be served with cooked shrimp or crab meat and hot linguine.1 pound linguine pasta\n1/2 cup butter\n2 cups heavy cream\n1/2 teaspoon ground black pepper','2019-04-16 00:00:00.000000',2),(63,'https://images.media-allrecipes.com/userphotos/300x300/2946884.jpg','Beef Tenderloin With Roasted Shallots','This tenderloin roast makes a good company dinner. It is similar to Beef Bourguignon, but requires considerably less cooking time. Roasted shallots are added to the sauce along with sauteed bacon bits. The recipe serves 6 and can be doubled.3/4 pound shallots, halved lengthwise and peeled\n1 1/2 tablespoons olive oil\nsalt and pepper to taste\n3 cups beef broth\n3/4 cup port wine\n1 1/2 teaspoons tomato paste','2019-04-16 00:00:00.000000',2),(64,'https://images.media-allrecipes.com/userphotos/300x300/24041.jpg','Garlic Chicken Fried Chicken','This actually uses my breading for Chicken Fried Steak---my husband suggested we try it with chicken breasts, and it was delicious!2 teaspoons garlic powder, or to taste\n1 teaspoon ground black pepper\n1 teaspoon salt\n1 teaspoon paprika\n1/2 cup seasoned bread crumbs','2019-04-16 00:00:00.000000',2),(65,'https://images.media-allrecipes.com/userphotos/300x300/4558014.jpg','The Best Meatloaf','This light-textured and juicy meatloaf is made with soft bread crumbs, green pepper, onion, and steak sauce.1/2 cup milk\n1 cup soft bread crumbs\n1 1/2 pounds ground beef\n1 1/4 teaspoons salt\nground black pepper to taste','2019-04-16 00:00:00.000000',2),(66,'https://images.media-allrecipes.com/userphotos/300x300/1024082.jpg','Chipotle Crusted Pork Tenderloin','Sweet and spicy rub for pork tenderloins. Just coat, let stand for 20 minutes and grill! Goes great with polenta or mashed yams.1 teaspoonpowder\n1 teaspoon garlic powder\n3 tablespoons chipotle chile powder','2019-04-16 00:00:00.000000',2),(67,'https://images.media-allrecipes.com/userphotos/300x300/558812.jpg','Stuffed Peppers My Way','Roasted green bell peppers are stuffed with feta cheese and a mixture of rice and green onions.1 cup water\n1/2 cup uncooked Arborio rice\n2 green bell peppers, halved and seeded\n1 tablespoon olive oil\n2 green onions, thinly sliced\n1 teaspoon dried basil','2019-04-16 00:00:00.000000',2),(68,'https://images.media-allrecipes.com/userphotos/300x300/3169915.jpg','Glazed Meatloaf I','Ground beef meatloaf is made with egg, bread, and onions, then topped with a sweet and sour glaze, and baked.1/2 cup ketchup\n1/3 cup brown sugar\n1/4 cup lemon juice, divided\n1 teaspoon mustard powder\n2 pounds ground beef','2019-04-16 00:00:00.000000',2),(69,'https://images.media-allrecipes.com/userphotos/300x300/20930.jpg','Chicken In Basil Cream','Fried chicken gone to finishing school, as a basil-Parmesan sauce brings a mainstay dish to a new level.1/4 cup milk\n1/4 cup dried bread crumbs\n4 skinless, boneless chicken breasts\n3 tablespoons butter\n1/2 cup chicken broth','2019-04-16 00:00:00.000000',2),(70,'https://images.media-allrecipes.com/userphotos/300x300/803370.jpg','Baked Ziti IV','Ziti pasta is layered with Provolone, mozzarella, cottage cheese, so\n1 1/2 tablespoons olive oil\n1 onion, sliced\n1 teaspoon minced fresh rosemary\n4 cloves garlic, chopped\n1/2 pound ground beef\n1/2 pound ground pork sausage','2019-04-16 00:00:00.000000',2),(71,'https://images.media-allrecipes.com/userphotos/300x300/1061355.jpg','Crispy and Tender Baked Chicken Thighs','Seasoned with a simple spice blend, these delicious baked chicken thighs yield crispy yet tender, succulent results!cooking spray\n8 bone-in chicken thighs with skin\n1/4 teaspoon garlic salt\n1/4 teaspoon onion salt','2019-04-16 00:00:00.000000',2),(72,'https://images.media-allrecipes.com/userphotos/300x300/232795.jpg','California Grilled Veggie Sandwich','For a smoky and sumptuous veggie-filled grilled sandwich, try this easy recipe. All it takes is some veggies, focaccia bread, lemon-mayonnaise dressing, and crumbled feta.1/4 cup mayonnaise\n3 cloves garlic, minced\n1 tablespoon lemon juice\n1/8 cup olive oil\n1 cup sliced red bell peppers','2019-04-16 00:00:00.000000',2),(73,'https://images.media-allrecipes.com/userphotos/300x300/1660326.jpg','Sweet and Sour Chicken I','Pineapple and vinegar are the sweet and sour in this Asian-style chicken and green pepper stir fry.1 (8 ounce) can pineapple chunks, drained (juice reserved)\n1/4 cup cornstarch\n1 3/4 cups water, divided\n3/4 cup white sugar\n1/2 cup distilled white vinegar\n2 drops orange food color\n8 skinless, boneless chicken breast halves - cut into 1 inch cubes\n2 1/4 cups self-rising flour','2019-04-16 00:00:00.000000',2),(74,'https://images.media-allrecipes.com/userphotos/300x300/4536524.jpg','Tender Italian Baked Chicken','This baked chicken recipe is ready in just 30 minutes. An easy breadcrumb and Parmesan coating keeps each chicken breast moist and delicious.3/4 cup mayonnaise\n1/2 cup grated Parmesan cheese\n3/4 teaspoon garlic powder','2019-04-16 00:00:00.000000',2),(75,'https://images.media-allrecipes.com/userphotos/300x300/272545.jpg','Beef and Bean Chimichangas','This is an awesome recipe, if you like Mexican food! These tasty beef and bean treats are baked instead of fried.1 pound lean ground beef\n3/4 cup chopped onion\n3/4 cup diced green bell pepper\n1 1/2 cups whole kernel corn\n2 cups taco sauce\n2 teaspoons chili powder\n1 teaspoon garlic salt','2019-04-16 00:00:00.000000',2),(76,'https://images.media-allrecipes.com/userphotos/300x300/1045817.jpg','Cajun Seafood Pasta','Three kinds of pepper turn up the heat in this creamy shrimp and scallop sauce. Fresh basil, thyme and parsley add just the right counterpoint, while Swiss and Parmesan cheese add their own sharp flavors. Perfect over fettucine!2 cups heavy whipping cream\n1 tablespoon chopped fresh basil\n1 tablespoon chopped fresh thyme\n2 teaspoons salt\n2 teaspoons ground black pepper\n1 1/2 teaspoons crushed red pepper flakes\n1 teaspoon ground white pepper','2019-04-16 00:00:00.000000',2),(77,'https://images.media-allrecipes.com/userphotos/300x300/1042381.jpg','Rosemary Roasted Turkey','In this method, which can be used with all types of poultry, olive oil infused with garlic and rosemary is rubbed between the skin and meat of the bird before roasting.3/4 cup olive oil\n3 tablespoons minced garlic\n2 tablespoons chopped fresh rosemary\n1 tablespoon chopped fresh basil','2019-04-16 00:00:00.000000',2),(78,'https://images.media-allrecipes.com/userphotos/300x300/6433140.jpg','Roasted Rack of Lamb','A rack of lamb is seared, and encrusted with Dijon mustard and garlic and rosemary flavored bread crumbs. Then it is roasted to your desired doneness.1/2 cup fresh bread crumbs\n2 tablespoons minced garlic\n2 tablespoons chopped fresh rosemary\n1 teaspoon salt\n1/4 teaspoon black pepper\n2 tablespoons olive oil','2019-04-16 00:00:00.000000',2),(79,'https://images.media-allrecipes.com/userphotos/300x300/2598687.jpg','Cornish Game Hens with Garlic and Rosemary','Lemon- and rosemary-inlittle game hens basted with a wine and garlic broth make any occasion special.4 Cornish game hens\nsalt and pepper to taste\n1 lemon, quartered\n4 sprigs fresh rosemary\n3 tablespoons olive oil','2019-04-16 00:00:00.000000',2),(80,'https://images.media-allrecipes.com/userphotos/300x300/2601802.jpg','Meatball Sandwich','Meatballs in tomato sauce with melted cheese on a lightly toasted baguette.1 pound ground beef\n3/4 cup bread crumbs\n2 teaspoons dried Italian seasoning\n2 cloves garlic, minced\n2 tablespoons chopped fresh parsley\n2 tablespoons grated Parmesan cheese\n1 egg, beaten','2019-04-16 00:00:00.000000',2),(81,'https://images.media-allrecipes.com/userphotos/300x300/2180712.jpg','Easy Indian Butter Chicken','This creamy curry Indian butter chicken recipe combines ethnic spices with simple ingredients like onion, butter, and tomato sauce for a tasty dish.1 cup butter, divided\n1 onion, minced\n1 tablespoon minced garlic\n1 (15 ounce) can tomato sauce\n3 cups heavy cream\n2 teaspoons salt','2019-04-16 00:00:00.000000',2),(82,'https://images.media-allrecipes.com/userphotos/300x300/5866328.jpg','Chicken and Biscuit Casserole','Packed with assorted veggies, this giant chicken pot pie wears a delicate buttermilk biscuit topping.1/4 cup butter\n2 cloves garlic, minced\n1/2 cup chopped onion\n1/2 cup chopped celery\n1/2 cup chopped baby carrots\n1/2 cup all-purpose flour\n2 teaspoons white sugar\n1 teaspoon salt','2019-04-16 00:00:00.000000',2),(83,'https://images.media-allrecipes.com/userphotos/300x300/973101.jpg','Chicken Stir-Fry','This chicken stir-fry is a little spicy and a little sweet. Fresh ginger and garlic add a little kick, which is balanced with brown sugar. Though the recipe calls for bell peppers, water chestnuts, and broccoli, try it with any vegetable you like!2 cups white rice\n4 cups water\n2/3 cup soy sauce\n1/4 cup brown sugar\n1 tablespoon cornstarch\n1 tablespoon minced fresh ginger\n1 tablespoon minced garlic\n1/4 teaspoon red pepper flakes','2019-04-16 00:00:00.000000',2),(84,'https://images.media-allrecipes.com/userphotos/300x300/5490138.jpg','acon Shish Kabobs','Marinated mushrooms and bacon-wrapped chicken chunks are threaded onto skewers with pineapple, and cooked on the grill.1/4 cup soy sauce\n1/4 cup cider vinegar\n2 tablespoons honey\n2 tablespoons canola oil\n10 large mushrooms, cut in half','2019-04-16 00:00:00.000000',2),(85,'https://images.media-allrecipes.com/userphotos/300x300/3618388.jpg','Manicotti Alla Romana','This rich meat, spinach and cheese filled manicotti dish is covered with white and red sauces.  It takes some time to prepare, but is well worth the effort!2 tablespoons olive oil\n1/2 cup chopped onion\n6 cloves garlic, finely chopped\n1 pound ground beef\nsalt to taste\n1 (10 ounce) package frozen chopped spinach, thawed and drained\n1 (12 ounce) package manicotti shells\n2 cups ricotta cheese\n2 eggs, beaten','2019-04-16 00:00:00.000000',2),(86,'https://images.media-allrecipes.com/userphotos/300x300/1690770.jpg','Melt-In-Your-Mouth Meat Loaf','This recipe is anything but regular old meatloaf! Everyone will love this moist version made in the slow cooker, with milk, mushrooms, and a little sage for extra flavor.2 eggs\n3/4 cup milk\n2/3 cup seasoned bread crumbs\n2 teaspoons dried minced onion\n1 teaspoon salt\n1/2 teaspoon rubbed sage','2019-04-16 00:00:00.000000',2),(87,'https://images.media-allrecipes.com/userphotos/300x300/197357.jpg','Spicy Rapid Roast Chicken','Well-seasoned chicken is blasted with high cooking heat for a speedy roast that still leaves the bird moist and flavorful.1 (3 pound) whole chicken\n1 tablespoon olive oil\n1/4 teaspoon salt\n1/4 teaspoon ground black pepper','2019-04-16 00:00:00.000000',2),(88,'https://images.media-allrecipes.com/userphotos/300x300/34046.jpg','Tantalizingly Tangy Meatloaf','A sweet, tangy glaze covers this tasty meatloaf that will have everyone requesting seconds.1 pound ground beef\n1/2 cup dry bread crumbs\n1 egg\ngarlic powder to taste','2019-04-16 00:00:00.000000',2),(89,'https://images.media-allrecipes.com/userphotos/300x300/394699.jpg','Quick and Easy Mexican Chicken','Seasoned chicken bakes under a crown of salsa and cheese. Served over rice or buttered noodles, dinner is ready in a snap!4 skinless, boneless chicken breasts\ncooking spray\n1 clove garlic, minced\n1 pinch salt','2019-04-16 00:00:00.000000',2),(90,'https://images.media-allrecipes.com/userphotos/300x300/409990.jpg','Roast Chicken with Rosemary','Stuff the cavity of a whole roasting chicken with onion and fresh rosemary for a simple and delicious baked chicken, just like the ones in Italian markets.1 (3 pound) whole chicken, rinsed\nsalt and pepper to taste','2019-04-16 00:00:00.000000',2),(91,'https://images.media-allrecipes.com/userphotos/300x300/4531528.jpg','Skillet Pork Chops with Potatoes and Onion','Pork chops and potatoes are cooked up on the stove with Parmesan cheese and onions in this savory one-dish meal.2 tablespoons vegetable oil\n4 pork chops (1/2 inch thick), trimmed\n2 tablespoons all-purpose flour\n1/3 cup grated Parmesan cheese\n1/2 teaspoon salt\n1/4 teaspoon pepper','2019-04-16 00:00:00.000000',2),(92,'https://images.media-allrecipes.com/userphotos/300x300/2363185.jpg','Salmon with Lemon and Dill','A wonderfully simple recipe for baked salmon. The flavors of lemon and dill really complement the fish.1 pound salmon fillets\n1/4 cup butter, melted\n5 tablespoons lemon juice\n1 tablespoon dried dill weed','2019-04-16 00:00:00.000000',2),(93,'https://images.media-allrecipes.com/userphotos/300x300/2461.jpg','Dijon-Tarragon Cream Chicken','Chicken breasts bathed in a delicate mustard tarragon sauce. A quick and simple recipe that you can serve on a weeknight but tastes like a French chef came to your house!1 tablespoon butter\n1 tablespoon olive oil\n4 skinless, boneless chicken breast halves\nsalt and pepper to taste','2019-04-16 00:00:00.000000',2),(94,'https://images.media-allrecipes.com/userphotos/300x300/1073730.jpg','Creamy Herbed Pork Chops','Skillet cooked pork chops with an herbed cream sauce will have you in comfort food heaven!4 thick-cut pork chops\n1 teaspoon Montreal steak seasoning, or to taste\n1/2 cup butter, divided\n2 1/2 tablespoons all-purpose flour, or as needed','2019-04-16 00:00:00.000000',2),(95,'https://images.media-allrecipes.com/userphotos/300x300/4532409.jpg','Chinese Pepper Steak','Beef top sirloin steak is sliced across the grain for tenderness, coated in a sweet-and-savory soy sauce marinade, then quickly stir fried with fresh green pepper, onion, and tomatoes.1 pound beef top sirloin steak\n1/4 cup soy sauce\n2 tablespoons white sugar\n2 tablespoons cornstarch\n1/2 teaspoon ground ginger','2019-04-16 00:00:00.000000',2),(96,'https://images.media-allrecipes.com/userphotos/300x300/1360550.jpg','Spinach and Feta Turkey Burgers','These are a big hit in the summertime when everyone is tired of the same old hamburgers and hot dogs.2 eggs, beaten\n2 cloves garlic, minced\n4 ounces feta cheese','2019-04-16 00:00:00.000000',2),(97,'https://images.media-allrecipes.com/userphotos/300x300/1015177.jpg','Pork Marsala','Boneless pork loin chops are simmered in a Marsala wine, garlic, and herb sauce. This is easy enough for a weeknight, and impressive enough for company.1/3 cup all-purpose flour\n1/4 teaspoon salt\n1/4 teaspoon garlic salt\n3/4 teaspoon garlic powder\n1/2 teaspoon dried oregano\n1 pound boneless pork loin chops, pounded thin','2019-04-16 00:00:00.000000',2),(98,'https://images.media-allrecipes.com/userphotos/300x300/677073.jpg','Spicy Chipotle Turkey Burgers','With a chipotle chile pepper, mozzarella cheese and other seasonings, you will absolutely love this spicy, yet flavorful, burger!1 pound ground turkey\n1/2 cup finely chopped onion\n2 tablespoons chopped fresh cilantro\n1 chipotle chile in adobo sauce, finely chopped\n1 teaspoon garlic powder','2019-04-16 00:00:00.000000',2),(99,'https://images.media-allrecipes.com/userphotos/300x300/2757525.jpg','Kielbasa and Cabbage','Cabbage cooked in bacon drippings and seasoned with garlic, red pepper flakes and caraway seeds makes a cozy nest for smoked Polish-style sausage in this homey, hearty, and satisfying supper.6 slices bacon\n1/4 cup water\n2 tablespoons white sugar\n1 onion, chopped\n2 teaspoons minced garlic','2019-04-16 00:00:00.000000',2),(100,'https://images.media-allrecipes.com/userphotos/300x300/1083281.jpg','Roast Leg of Lamb with Rosemary','This leg of lamb is marinated overnight with fresh rosemary, garlic, mustard, honey and lemon zest. Be prepared for many requests for seconds!1/4 cup honey\n2 tablespoons prepared Dijon-style mustard\n2 tablespoons chopped fresh rosemary\n1 teaspoon freshly ground black pepper','2019-04-16 00:00:00.000000',2),(101,'https://images.media-allrecipes.com/userphotos/300x300/3100059.jpg','Penne and Vodka Sauce','Sweet and salty pancetta is lightly sauteed in butter, then cooked in vodka, tomato sauce and cream to make a rich and flavorful sauce for boiled penne. Grate Parmesan cheese over the top and serve warm.1 (16 ounce) package penne pasta\n2 tablespoons butter\n1/4 pound thinly sliced pancetta bacon, chopped\n1/3 cup vodka','2019-04-16 00:00:00.000000',2),(102,'https://images.media-allrecipes.com/userphotos/300x300/1095717.jpg','Tater Tot Taco Casserole','This recipe gives you a Mexican-style version of tater tot casserole.1 pound ground beef\n1 small onion, diced\n1 clove garlic, minced\n1 (1 ounce) t taco seasoning mix\n1 (16 ounce) bag frozen Mexican-style corn','2019-04-16 00:00:00.000000',2),(103,'https://images.media-allrecipes.com/userphotos/300x300/1169917.jpg','Mushroom Chicken Piccata','Chicken sauteed in white wine, lemon and butter gets a boost from mushrooms in this rendition of a classic.1/2 cup all-purpose flour\n1 teaspoon salt\n1/2 teaspoon paprika\n1 egg\n2 tablespoons milk\n6 skinless, boneless chicken breast halves\n4 tablespoons butter','2019-04-16 00:00:00.000000',2),(104,'https://images.media-allrecipes.com/userphotos/300x300/2390152.jpg','Greek Lemon Chicken and Potato Bake','One-pan Greek chicken, roasted with potatoes and green beans, requires minimal attention while it cooks.4 chicken leg quarters\n1 (24 ounce) bag small potatoes\n1/2 cup olive oil\n2 lemons, juiced, divided\n2 tablespoons dried basil','2019-04-16 00:00:00.000000',2),(105,'https://images.media-allrecipes.com/userphotos/300x300/473536.jpg','Fra Diavolo Sauce With Pasta','A daring dash of red pepper flakes gives off a spicy heat in this marvelous tomato garlic sauce with shrimp and scallops. Stir in a bit of parsley and serve over hot linguine.4 tablespoons olive oil, divided\n6 cloves garlic, crushed\n3 cups whole peeled tomatoes with liquid, chopped\n1 1/2 teaspoons salt\n1 teaspoon crushed red pepper flakes','2019-04-16 00:00:00.000000',2),(106,'https://images.media-allrecipes.com/userphotos/300x300/2142598.jpg','Crispy Fried Chicken','An excellent recipe for technique as much as anything, as the few coating ingredients of buttermilk, flour and paprika are not difficult to combine!1 (4 pound) chicken, cut into pieces\n1 cup buttermilk\n2 cups all-purpose flour for coating','2019-04-16 00:00:00.000000',2),(107,'https://images.media-allrecipes.com/userphotos/300x300/972459.jpg','Egg Drop Soup (Better than Restaurant Quality!)','Mix up a simple, sensational bowl of soup for one with this recipe.1 cup chicken broth\n1/4 teaspoon soy sauce\n1/4 teaspoon sesame oil\n1 teaspoon cornstarch (optional)\n2 teaspoons water (optional)','2019-04-17 00:00:00.000000',2),(108,'https://images.media-allrecipes.com/userphotos/300x300/362677.jpg','Vegetarian Chickpea Sandwich Filling','Serve this tasty sandwich spread on crusty whole grain rolls or pita bread, with lettuce and tomato.1 (19 ounce) can garbanzo beans, drained and rinsed\n1 stalk celery, chopped\n1/2 onion, chopped\n1 tablespoon mayonnaise','2019-04-17 00:00:00.000000',2),(109,'https://images.media-allrecipes.com/userphotos/300x300/2276935.jpg','Sweet Restaurant Slaw','Starting with prepared coleslaw mix this recipe for a creamy coleslaw delivers a bit of tang through the use of vinegar, making it a perfect accompaniment for fried chicken, burgers, or fried fish.1 (16 ounce) bag coleslaw mix\n2 tablespoons diced onion\n2/3 cup creamy salad dressing (such as Miracle Whip™)\n3 tablespoons vegetable oil','2019-04-17 00:00:00.000000',2),(110,'https://images.media-allrecipes.com/userphotos/300x300/1115547.jpg','Super-Delicious Zuppa Toscana','If you love the Zuppa Toscana at your local chain Italian restaurant, you will adore this soup. The rich soup is made with Italian sausage, potatoes, cream, and crushed red pepper. It is truly satisfying and irresistible. Tuck into this on a cold day and you are sure to be warmed all the way down to your toes.1 pound bulk mild Italian sausage\n1 1/4 teaspoons crushed red pepper flakes\n4 slices bacon, cut into 1/2 inch p\n1 large onion, diced\n1 tablespoon minced garlic','2019-04-17 00:00:00.000000',2),(111,'https://images.media-allrecipes.com/60.jpg','Holiday Chicken Salad','Dried cranberries add a sweet tartness to chicken and vegetable salad.  Make a delightful sandwich filling, too.4 cups cubed, cooked chicken meat\n1 cup mayonnaise\n1 teaspoon paprika\n1 1/2 cups dried cranberries\n1 cup chopped celery','2019-04-17 00:00:00.000000',2),(114,'https://images.media-allrecipes.com/userphotos/300x300/972459.jpg','Egg Drop Soup (Better than Restaurant Quality!)','Mix up a simple, sensational bowl of soup for one with this recipe. 1 cup chicken broth\n1/4 teaspoon soy sauce. \n1/4 teaspoon sesame oil. \n1 teaspoon cornstarch (optional). \n2 teaspoons water (optional)','2019-04-17 00:00:00.000000',3);
/*!40000 ALTER TABLE `food_recipe_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile`
--

LOCK TABLES `users_profile` WRITE;
/*!40000 ALTER TABLE `users_profile` DISABLE KEYS */;
INSERT INTO `users_profile` VALUES (1,'profile_pics/luck-Black_Clover.gif',1),(2,'default.jpg',2),(3,'default.jpg',3),(4,'default.jpg',4);
/*!40000 ALTER TABLE `users_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-17 12:47:02
