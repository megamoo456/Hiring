-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 24 oct. 2021 à 19:30
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hiring`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add companies', 7, 'add_companies'),
(26, 'Can change companies', 7, 'change_companies'),
(27, 'Can delete companies', 7, 'delete_companies'),
(28, 'Can view companies', 7, 'view_companies'),
(29, 'Can add matches', 8, 'add_matches'),
(30, 'Can change matches', 8, 'change_matches'),
(31, 'Can delete matches', 8, 'delete_matches'),
(32, 'Can view matches', 8, 'view_matches');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$GdmsP2XsQNVgKkdaS8eEPM$V4me5qkJaxd7nqW+18JfbSwIE4aYPvARsM272boGCNo=', '2021-10-20 12:04:00.515302', 1, 'amin', '', '', '', 1, 1, '2021-10-19 16:51:38.781553'),
(2, 'pbkdf2_sha256$260000$HCaMiaBNihlyCqrXCbwG6k$s0YfcE35w/RjScXDiEAaLaA6ufuGn1UjIsSQwGWd9XE=', '2021-10-20 12:13:42.353544', 1, 'admin', '', '', '', 1, 1, '2021-10-20 12:05:41.457967');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `backendapp_companies`
--

DROP TABLE IF EXISTS `backendapp_companies`;
CREATE TABLE IF NOT EXISTS `backendapp_companies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `website` varchar(200) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(17) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postal_code` double DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=414 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `backendapp_companies`
--

INSERT INTO `backendapp_companies` (`id`, `source_id`, `source_name`, `name`, `website`, `email`, `phone`, `address`, `postal_code`, `city`, `country`) VALUES
(1, 186, 'dataset_A.csv', 'Dupont Café (parent)', '', '', '', '', 75015, '', 'France'),
(2, 196, 'dataset_A.csv', 'Heiko Bordeaux', '', '', '', '', 33000, '', 'France'),
(3, 259, 'dataset_A.csv', 'Tempête sous un crâne', '', '', '33 1 47 55 07 20', '', 75015, '', 'France'),
(4, 292, 'dataset_A.csv', 'LA PIZZA DU DIMANCHE SOIR', '', '', '01 85 47 11 12', '', 78670, '', 'France'),
(5, 371, 'dataset_A.csv', 'Planet Sushi Pyrénées', '', '', '01 43 15 17 17', '', 75020, '', 'France'),
(6, 376, 'dataset_A.csv', 'Mum Dim Sum (Parent)', '', '', '33142364304', '', 75001, 'Paris', 'France'),
(7, 420, 'dataset_A.csv', 'LA CHOPE DAGUERRE', '', '', '01 43 22 76 59', '', 75014, '', 'France'),
(8, 497, 'dataset_A.csv', 'Planet Sushi Versailles', '', '', '01 39 49 00 00', '', 78000, '', 'France'),
(9, 524, 'dataset_A.csv', 'PAPA RAFFAELE', '', '', '', '', 59800, '', 'France'),
(10, 632, 'dataset_A.csv', 'TOT OU TARD', '', '', '', '', 34000, '', 'France'),
(11, 684, 'dataset_A.csv', 'LES ATELIERS', '', '', '01 43 43 17 48', '', 75012, '', 'France'),
(12, 714, 'dataset_A.csv', 'L\'Ekinoxe', '', '', '', '', 75011, '', 'France'),
(13, 721, 'dataset_A.csv', 'FRIIDAY', '', '', '', '', 92160, '', 'France'),
(14, 743, 'dataset_A.csv', 'Guama Café', '', '', '', '', 59800, '', 'France'),
(15, 784, 'dataset_A.csv', 'Le patacrepe Nîmes', 'https://www.le-patacrepe.com/', '', '04 66 64 67 70', '', 30900, '', 'France'),
(16, 820, 'dataset_A.csv', 'Nest Paris', '', '', '01 40 20 45 20', '', 75001, '', 'France'),
(17, 839, 'dataset_A.csv', 'Bercy Café', '', '', '01 43 43 44 29', '', 75012, '', 'France'),
(18, 871, 'dataset_A.csv', 'SUSHI JULIETTE', '', '', '01 45 38 96 84', '', 75014, '', 'France'),
(19, 902, 'dataset_A.csv', 'La Dolce VIta', '', '', '03 22 92 24 23', '', 80000, '', 'France'),
(20, 927, 'dataset_A.csv', 'Stevenot Cadet', '', '', '33171763171', '', 75009, '', 'France'),
(21, 939, 'dataset_A.csv', 'La pierrade', '', '', '01 42 55 30 65', '', 75018, '', 'France'),
(22, 993, 'dataset_A.csv', 'Planet Sushi Levallois', '', '', '01 47 59 09 09', '', 92300, '', 'France'),
(23, 1093, 'dataset_A.csv', 'AU 35', '', '', '01 42 60 23 24', '', 75006, '', 'France'),
(24, 1143, 'dataset_A.csv', 'Yogurt Factory La Défense', '', '', '', '', 92092, '', 'France'),
(25, 1183, 'dataset_A.csv', 'LES POLISSONS', '', '', '01 42 54 90 15', '', 75020, '', ''),
(26, 1203, 'dataset_A.csv', 'DEL ARTE  ALENÇON', '', '', '02 33 80 16 71', '', 61000, '', ''),
(27, 1260, 'dataset_A.csv', 'BOAZ CONCEPT', '', '', '', '', 59780, '', ''),
(28, 1502, 'dataset_A.csv', 'Le Progrès', '', '', '01 42 72 01 44', '', 75003, '', ''),
(29, 1508, 'dataset_A.csv', 'RICE TROTTERS Colisée', 'http://ricetrotters.com/#/accueil', '', '01 53 75 11 95', '', 75008, '', 'France'),
(30, 1520, 'dataset_A.csv', 'Bagelstein Pyramides', '', '', '01 42 61 06 32', '', 75001, '', ''),
(31, 1533, 'dataset_A.csv', 'Biltoki', '', '', '', '', 40230, '', 'France'),
(32, 1567, 'dataset_A.csv', 'ZOE BOUILLON', '', '', '01 42 02 02 83', '', 75019, '', 'France'),
(33, 1572, 'dataset_A.csv', 'Planet Sushi Monge', '', '', '01 44 08 75 00', '', 75005, '', ''),
(34, 1619, 'dataset_A.csv', 'CUCUZZA', '', '', '01 42 28 71 75', '', 75017, '', 'France'),
(35, 1675, 'dataset_A.csv', 'Relais christine', '', '', '', '', 75006, '', 'France'),
(36, 1695, 'dataset_A.csv', 'Gallika Cadet', '', '', '33953888375', '', 75009, '', 'France'),
(37, 1757, 'dataset_A.csv', 'DEL ARTE PARLY 2', '', '', '01 39 23 81 90', '', 78150, '', 'France'),
(38, 1762, 'dataset_A.csv', 'Les Amis de Messina (PARENT)', '', '', '01 42 61 13 73', '', 75002, '', ''),
(39, 1823, 'dataset_A.csv', 'SUSHI SHOP Charles de Gaulle', '', '', '01 41 79 31 19', '', 94130, '', ''),
(40, 1830, 'dataset_A.csv', 'O Charolais', '', '', '01 34 64 02 17', '', 95310, '', 'France'),
(41, 1860, 'dataset_A.csv', 'Planet Sushi Doumer', '', '', '01 40 72 15 15', '', 75016, '', 'France'),
(42, 1985, 'dataset_A.csv', 'Bistrot Colette', '', '', '', '', 38300, '', ''),
(43, 2068, 'dataset_A.csv', 'BISTROT M', '', '', '0142383886', '', 75019, '', 'France'),
(44, 2127, 'dataset_A.csv', 'VINS DES PYRENEES', '', '', '', '', 75004, '', ''),
(45, 2137, 'dataset_A.csv', 'TRUST', '', '', '', '', 94000, '', ''),
(46, 2148, 'dataset_A.csv', 'Sept cinq', '', '', '', '', 75001, '', ''),
(47, 2327, 'dataset_A.csv', 'Noura Opéra', '', '', '09 72 33 41 34', '', 75008, '', 'France'),
(48, 2373, 'dataset_A.csv', 'Baprod Massieux', '', '', '', '', 1600, '', 'France'),
(49, 2460, 'dataset_A.csv', 'THE BOOTLAGERS', '', '', '01 44 23 79 75', '', 75013, '', 'France'),
(50, 2514, 'dataset_A.csv', 'ICE TO ICE (ARTISAN DU BURGER)', '', '', '01 42 36 19 13', '', 75001, '', ''),
(51, 2613, 'dataset_A.csv', 'La Boutarde', '', '', '01 47 45 34 55', '', 92200, '', 'France'),
(52, 2840, 'dataset_A.csv', 'Au bout du bar', '', '', '09 81 97 63 92', '', 95100, '', ''),
(53, 2984, 'dataset_A.csv', 'Marlette BHV', '', '', '', '', 75004, '', ''),
(54, 3019, 'dataset_A.csv', 'Planet Sushi Pereire', '', '', '01 40 54 00 00', '', 75017, '', 'France'),
(55, 3129, 'dataset_A.csv', 'Sogepar', '', '', '', '', 0, '', ''),
(56, 3474, 'dataset_A.csv', 'Timhotel Groupe', '', '', '', '', 0, '', ''),
(57, 3481, 'dataset_A.csv', 'Francis la butte', '', '', '', '', 75018, '', ''),
(58, 3487, 'dataset_A.csv', 'PARIS ROME', '', '', '', '', 75003, '', 'France'),
(59, 3488, 'dataset_A.csv', 'SAS LE PERY', '', '', '', '', 31000, '', 'France'),
(60, 3497, 'dataset_A.csv', 'Boulangerie Feuillette', '', '', '', '', 41350, '', 'France'),
(61, 3516, 'dataset_A.csv', 'DEL ARTE MONT-DEL-MARSAN SAINT-PIERRE-DU-MONT', '', '', '05 58 45 45 00', '', 40280, '', 'France'),
(62, 3535, 'dataset_A.csv', 'LES PETITES ASSIETTES', '', '', '01 40 44 00 87', '', 75014, '', 'France'),
(63, 3581, 'dataset_A.csv', 'PATRIZIA', '', '', '01 49 09 17 11', '', 92100, '', 'France'),
(64, 3606, 'dataset_A.csv', 'Ten Belles Bread (Parent)', '', '', '', '', 75011, '', ''),
(65, 3609, 'dataset_A.csv', 'Radisson Blue Bordeaux', '', '', '', '', 33000, '', 'France'),
(66, 3681, 'dataset_A.csv', 'Léon de B Filiales (Parent)', '', '', '', '', 0, '', ''),
(67, 3764, 'dataset_A.csv', 'L\'assiette aux fromages', '', '', '01 43 36 91 59', '', 75005, '', 'France'),
(68, 3839, 'dataset_A.csv', 'Doctolib', '', '', '', '', 75008, '', ''),
(69, 3891, 'dataset_A.csv', 'Eataly Salle', '', '', '', '', 75004, '', 'France'),
(70, 3896, 'dataset_A.csv', 'IL GIGOLO', '', '', '01 43 29 05 69', '', 75005, '', 'France'),
(71, 4008, 'dataset_A.csv', 'Planet Sushi Kléber', '', '', '01 53 70 86 86', '', 75016, '', 'France'),
(72, 4110, 'dataset_A.csv', 'POKEBAR', '', '', '', '', 75017, '', ''),
(73, 4116, 'dataset_A.csv', 'Planet Sushi Saint Mandé', '', '', '01 41 93 93 93', '', 94160, '', ''),
(74, 4410, 'dataset_A.csv', 'Le patacrepe Echirolles', 'https://www.le-patacrepe.com/', '', '04 76 23 40 21', '', 38130, '', 'France'),
(75, 4465, 'dataset_A.csv', 'La Cuisine du Ptit Lu', '', '', '', '', 47600, '', 'France'),
(76, 4594, 'dataset_A.csv', 'Coco de Mer', '', '', '', '', 75005, '', 'France'),
(77, 4637, 'dataset_A.csv', 'Fresh burritos Lille', '', '', '', '', 59000, '', ''),
(78, 4645, 'dataset_A.csv', 'Le Bourg\'bon Mouzda', '', '', '33 9 82 24 10 87', '', 33200, '', ''),
(79, 4646, 'dataset_A.csv', 'Groupe Sighor - Leo Resto & Ace Hotel', '', '', '', '', 0, '', 'France'),
(80, 4649, 'dataset_A.csv', 'Veng Hour', '', '', '', '', 92000, '', ''),
(81, 4683, 'dataset_A.csv', 'Maison Malesherbes SAS', '', '', '', '', 75008, '', 'France'),
(82, 4744, 'dataset_A.csv', 'Double Dragon', '', '', '01 71 32 41 95', '', 75011, '', ''),
(83, 4746, 'dataset_A.csv', 'Falstaff', '', '', '01 43 43 18 33', '', 75011, '', ''),
(84, 4940, 'dataset_A.csv', 'L\'Apollo', '', '', '01 43 35 53 66', '', 75014, '', 'France'),
(85, 4965, 'dataset_A.csv', 'TECHSell', '', '', '', '', 92100, '', ''),
(86, 4995, 'dataset_A.csv', 'FRESH BURRITOS DUNKERQUE', '', '', '09 53 83 64 98', '', 59140, '', 'France'),
(87, 5508, 'dataset_A.csv', 'SAS Villert - MOUSSE TOUCH', '', '', '', '', 59000, '', ''),
(88, 5614, 'dataset_A.csv', 'L\'Apibo', '', '', '01 55 34 94 50', '', 75002, '', 'France'),
(89, 5784, 'dataset_A.csv', 'LES FRANGINS', '', '', '01 47 07 23 46', '', 75013, '', ''),
(90, 5793, 'dataset_A.csv', 'LE FER A CHEVAL', '', '', '03 20 72 65 63', '', 59100, '', 'France'),
(91, 5861, 'dataset_A.csv', 'LA PLAGE', '', '', '+33 1 75 51 90 09', '', 75019, '', 'France'),
(92, 5961, 'dataset_A.csv', 'Au Port Du Salut', '', '', '09 67 11 96 15', '', 75005, '', ''),
(93, 5984, 'dataset_A.csv', 'LE PATACREPE', '', '', '03 20 04 21 36', '', 59260, '', ''),
(94, 6076, 'dataset_A.csv', 'Hamler\'s burgery', '', '', '33143294491', '', 75005, '', ''),
(95, 6081, 'dataset_A.csv', 'Le Ballu', '', '', '', '', 0, '', ''),
(96, 6158, 'dataset_A.csv', 'Columbus Cafe  (Parent)', '', '', '', '', 0, '', ''),
(97, 6178, 'dataset_A.csv', 'Planet Sushi Voltaire', '', '', '01 48 07 70 70', '', 75011, '', 'France'),
(98, 6446, 'dataset_A.csv', 'La Ferme De Charles', '', '', '33148241111', '', 75010, '', 'France'),
(99, 6737, 'dataset_A.csv', 'Bar a caf', '', '', '', '', 21310, '', 'France'),
(100, 6823, 'dataset_A.csv', 'SmartHab', '', '', '', '', 92200, '', 'France'),
(101, 6917, 'dataset_A.csv', 'Berliner', '', '', '', '', 0, '', 'France'),
(102, 6975, 'dataset_A.csv', 'Amorino Paris 5', '', '', '', '', 75006, '', ''),
(103, 7026, 'dataset_A.csv', 'FLAMS SIEGE', '', '', '0388529058', '', 0, '', 'France'),
(104, 7072, 'dataset_A.csv', 'BISTROT DES CAMPAGNES', '', '', '01 40 47 91 27', '', 75014, '', ''),
(105, 7108, 'dataset_A.csv', 'Oncle Jack', '', '', '', '', 71100, '', ''),
(106, 7157, 'dataset_A.csv', 'HOTEL CFH', '', '', '01 60 71 56 30', '', 13127, '', ''),
(107, 7236, 'dataset_A.csv', 'Mozzato', '', '', '01 42 21 02 63', '', 75002, '', 'France'),
(108, 7306, 'dataset_A.csv', 'Gosselin', '', '', '01 45 08 03 59', '', 75001, '', 'France'),
(109, 7324, 'dataset_A.csv', 'Bagelstein Poitiers', '', '', '', '', 86000, '', ''),
(110, 7327, 'dataset_A.csv', 'L\'estrapade', '', '', '+33 1 43 25 72 58', '', 75005, '', ''),
(111, 7460, 'dataset_A.csv', 'Café Moco', '', '', '', '', 75011, '', ''),
(112, 7713, 'dataset_A.csv', 'Shirvan', '', '', '', '', 75008, '', ''),
(113, 7741, 'dataset_A.csv', 'KEÏLI', '', '', '', '', 75011, '', 'France'),
(114, 7768, 'dataset_A.csv', 'LES PERES POPULAIRES', '', '', '01 43 48 49 22', '', 75020, '', ''),
(115, 7812, 'dataset_A.csv', 'COLCHIDE', '', '', '09 80 94 09 68', '', 75018, '', 'France'),
(116, 7832, 'dataset_A.csv', 'Ti Sable', '', '', '', '', 97217, '', 'France'),
(117, 8211, 'dataset_A.csv', 'Bureau Vallée', '', '', '', '', 0, '', ''),
(118, 8268, 'dataset_A.csv', 'CAFE DE L INDUSTRIE', '', '', '09 63 62 98 93', '', 78100, '', 'France'),
(119, 8272, 'dataset_A.csv', 'Fresh burritos Lyon', '', '', '', '', 69000, '', 'France'),
(120, 8353, 'dataset_A.csv', 'MERSEA', '', '', '09 73 22 46 13', '', 75009, '', ''),
(121, 8541, 'dataset_A.csv', 'Cousbox', '', '', '', '', 69001, '', 'France'),
(122, 8628, 'dataset_A.csv', 'Air Liquide / AL IT', 'airliquide.com', '', '+33 140625555', '75 Quai D Orsay, Paris Cedex 07', 77024, 'Paris', 'France'),
(123, 8637, 'dataset_A.csv', 'Dataiku', 'dataiku.com', '', '', '26 Broadway', 75009, 'New York', ''),
(124, 8640, 'dataset_A.csv', 'AROLLA', 'arolla.fr', '', '', '25 Rue du Louvre', 75001, 'Paris', 'France'),
(125, 8643, 'dataset_A.csv', 'Le Phare', 'lephare.com', '', '+33 2 51 84 11 90', '58 Avenue du Parc de Procé', 44100, 'Nantes', 'France'),
(126, 8647, 'dataset_A.csv', 'Arcad Software', 'arcadsoftware.com', '', '(603) 371-9074', '1 Phoenix Mill Lane', 74650, 'Peterborough', 'United States'),
(127, 8652, 'dataset_A.csv', 'Mint Conseil', 'mint-conseil.fr', '', '', '43 Rue Camille Desmoulins', 92130, 'Issy-les-Moulineaux', 'France'),
(128, 8664, 'dataset_A.csv', 'Ubeeqo', 'ubeeqo.com', '', '33 1 78 16 45 70', '2 Angel Mews', 92100, 'London', 'France'),
(129, 8689, 'dataset_A.csv', 'UpSlide', 'upslide.net', '', '', '9 Avenue de l\'Opéra', 10018, 'Paris', ''),
(130, 8694, 'dataset_A.csv', 'Digital No Limit', 'digitalnolimit.com', '', '+33 1 86 95 03 91', '41 Rue Boissy d\'Anglas', 75008, 'Paris', 'France'),
(131, 8698, 'dataset_A.csv', 'SMARTHYS', 'smarthys.com', '', '+33 1 83 62 89 96', '116 Rue de Verdun', 92800, 'Puteaux', 'France'),
(132, 8702, 'dataset_A.csv', 'HorseCom', 'horsecom.io', '', '33 1 71 96 52 55', '17 Rue Claude Bloch', 14000, 'Caen', 'France'),
(133, 8746, 'dataset_A.csv', 'TableOnline', 'guestonline.io', '', '+33 5 64 88 01 84', '2 Avenue de Lombez', 31300, 'Toulouse', 'France'),
(134, 8747, 'dataset_A.csv', 'KTM Advance', 'ktm-advance.com', '', '33 1 40 27 47 67', '157 Boulevard Macdonald', 75017, 'Paris', 'France'),
(135, 8758, 'dataset_A.csv', 'BMI SYSTEM', 'bmi-system.com', '', '+33 1 40 91 83 94', '17 Boulevard du Général de Gaulle', 92120, 'Montrouge', 'France'),
(136, 8764, 'dataset_A.csv', 'Kea & Partners', 'kea-partners.com', '', '33 1 40 84 74 00', '3 Rue Danton', 92240, 'Malakoff', 'France'),
(137, 8771, 'dataset_A.csv', 'MULTIVAC Sepp Haggenmüller SE & Co. KG', 'multivac.fr', '', '', '2 Passage Fernand Léger', 77462, 'Lagny-sur-Marne', 'France'),
(138, 8776, 'dataset_A.csv', 'Legal Suite', 'legal-suite.fr', '', '', '65 Rue Jean Jacques Rousseau', 92150, 'Suresnes', ''),
(139, 8779, 'dataset_A.csv', 'Thalys', 'thalys.com', '', '32 2 548 06 00', '20 Place Stéphanie', 1000, 'Bruxelles', 'Belgium'),
(140, 8786, 'dataset_A.csv', 'BRIGHTEN', 'brighten.fr', '', '+33 1 44 01 46 40', '17 Rue de Satory', 78000, 'Versailles', 'France'),
(141, 8790, 'dataset_A.csv', 'Planeum - Certifiée GPTW 2017', 'planeum.com', '', '+33 1 42 47 82 11', '80 Rue d\'Hauteville', 75010, 'Paris', 'France'),
(142, 8806, 'dataset_A.csv', 'eBusiness Information', 'ebusinessinformation.fr', '', '+33 1 41 24 43 20', 'Avenue Aristide Briand', 0, 'Bagneux', 'France'),
(143, 8824, 'dataset_A.csv', 'Uside', 'uside.fr', '', '', '22 RUE MARIGNAN', 75008, 'PARIS', 'France'),
(144, 8830, 'dataset_A.csv', 'MyndBlue', 'myndblue.io', '', '', '1 Broadway', 2142, 'Cambridge', 'United States'),
(145, 8832, 'dataset_A.csv', 'D2SI', 'd2-si.fr', '', '+33 1 43 12 10 80', '29 Rue d\'Astorg', 75008, 'Paris', 'France'),
(146, 8834, 'dataset_A.csv', 'Centre de Formation et de Perfectionnement des Journalistes', 'cfpj.com', '', '+33 9 50 12 94 16', '35 Rue du Louvre', 75002, 'Paris', 'France'),
(147, 8836, 'dataset_A.csv', 'SNCF', 'sncf.com', '', '33-1-5325-6000', '2 Place aux Etoiles', 93200, 'Saint-Denis', 'France'),
(148, 8838, 'dataset_A.csv', 'Urban Place', 'urbanplace.me', '', '+972 3-927-4577', '3 Rothschild Street', 0, 'Bat Yam', 'Israel'),
(149, 8845, 'dataset_A.csv', 'CARIZY', 'carizy.com', '', '33 1 86 95 04 14', '19 Rue Martel', 49320, 'Paris', 'France'),
(150, 8881, 'dataset_A.csv', 'ELAN', 'elan-france.com', '', '', '1 Avenue Eugène Freyssinet', 78061, 'Guyancourt', ''),
(151, 8885, 'dataset_A.csv', 'Maison Kitsuné', 'kitsune.fr', '', '', '10 RUE CHAUCHAT', 75009, 'Minato-ku', 'France'),
(152, 8896, 'dataset_A.csv', 'Zero Games Studios', 'zerogamesstudios.com', '', '', '46, rue René Clair', 75018, 'Paris', 'France'),
(153, 8900, 'dataset_A.csv', 'Synolia', 'synolia.com', '', '+33 4 27 70 53 70', '59 Rue de l\'Abondance', 69003, 'Lyon', 'France'),
(154, 8903, 'dataset_A.csv', 'Esokia Web Agency', 'esokia.com', '', '+230 5252 3334', 'ORBIS CT', 0, 'Quatre Bornes', 'Mauritius'),
(155, 8904, 'dataset_A.csv', 'Jalios', 'jalios.com', '', '33 1 39 23 92 80', '58 Rue Pottier', 78150, 'Le Chesnay', 'France'),
(156, 8911, 'dataset_A.csv', 'Artdesk', 'artdesk.fr', '', '+33 1 58 22 17 50', '93 Rue de Monceau', 75008, 'Paris', 'France'),
(157, 8916, 'dataset_A.csv', 'Yelloz components', 'yellozgroup.com', '', '', '', 91940, '', 'France'),
(158, 8932, 'dataset_A.csv', 'spgestion.fr', 'spgestion.fr', '', '', '', 0, '', 'France'),
(159, 8935, 'dataset_A.csv', 'Capgemini', 'capgemini.com', '', '+33 1 47 54 50 00', '23 Rue Brey', 75017, 'Paris', 'France'),
(160, 8942, 'dataset_A.csv', 'Mon-avocat.fr', 'mon-avocat.fr', '', '33 1 72 73 98 82', '68 Rue Saint Honoré', 75001, 'Paris', 'France'),
(161, 8971, 'dataset_A.csv', 'Novethic', 'novethic.fr', '', '+33 1 58 50 98 14', '', 75001, 'Paris', 'France'),
(162, 8992, 'dataset_A.csv', 'AB Tasty', 'abtasty.com', '', '', '38 Rue du Sentier', 50667, 'Paris', 'France'),
(163, 8998, 'dataset_A.csv', 'Agence Clark', 'agence-clark.com', '', '', '14 Rue d\'Uzès', 75002, 'Paris', 'France'),
(164, 9004, 'dataset_A.csv', 'Interim Management LLC', 'interimmanagement.com', '', '', 'The Seagram Building 375 Park Ave', 10152, 'New York', 'United States'),
(165, 9006, 'dataset_A.csv', 'Aircall', 'aircall.io', '', '+1 888-240-6923', '27 West 20th Street', 10003, 'New York', 'United States'),
(166, 9018, 'dataset_A.csv', 'CMG Conseil', 'cmgconseil.com', '', '33140075070', '39 Avenue de Friedland', 75008, 'Paris', 'France'),
(167, 9025, 'dataset_A.csv', 'InterCloud', 'intercloud.com', '', '33 1 81 80 26 00', '88-90 Boulevard de Sébastopol', 75001, 'Paris', 'France'),
(168, 9036, 'dataset_A.csv', 'Netfective Technology', 'bluage.com', '', '+33 5 56 07 79 99', 'Avenue de Verdun 1916', 92250, 'La Garenne-Colombes', 'France'),
(169, 9041, 'dataset_A.csv', 'SCORE DDB', 'scoreddb.fr', '', '33 1 53 32 59 92', '75 Rue la Condamine', 75017, 'Paris', 'France'),
(170, 9059, 'dataset_A.csv', 'Flatchr', 'flatchr.io', '', '+33 9 50 44 91 56', '81 Rue de Paris', 92100, 'Boulogne-Billancourt', 'France'),
(171, 9064, 'dataset_A.csv', 'Alcimed', 'alcimed.com', '', '33 1 44 30 44 30', '57 Boulevard de Montmorency', 75016, 'Paris', 'France'),
(172, 9075, 'dataset_A.csv', 'Primobox', 'primobox.com', '', '+33 5 57 99 50 34', '72 Rue du Faubourg Saint-Honoré', 75008, 'Paris', 'France'),
(173, 9097, 'dataset_A.csv', 'TYPY', 'typy.fr', '', '', '7, CITÉ HITTORF', 75010, 'Paris', 'France'),
(174, 9109, 'dataset_A.csv', 'Agile4Me', 'agile4me.com', '', '', '21 Rue des Vergers', 92320, 'Châtillon', 'France'),
(175, 9113, 'dataset_A.csv', 'Equinox-Cognizant', 'equinox-cognizant.com', '', '', '500 Frank W Burr Boulevard', 75009, 'Teaneck', 'France'),
(176, 9126, 'dataset_A.csv', 'Techni-Contact / Md2i', 'techni-contact.com', '', '+33 1 55 60 29 29', '253 Rue Gallieni', 92100, 'Boulogne-Billancourt', 'France'),
(177, 9142, 'dataset_A.csv', 'Bell & Ross, Inc.', 'bellross.com', '', '786-454-9730', '8 Rue Copernic', 33139, 'Miami Beach', 'United States'),
(178, 9148, 'dataset_A.csv', 'Allo-Media', 'allo-media.fr', '', '0170827895', '32 Rue de la Bienfaisance', 75008, 'Paris', 'France'),
(179, 9154, 'dataset_A.csv', 'dioki technologies', 'dioki.net', '', '+33 1 77 62 79 27', '10 Rue Waldeck Rochet', 93300, 'Aubervilliers', 'France'),
(180, 9170, 'dataset_A.csv', 'Amabis France', 'amabis.com', '', '33 1 45 36 45 00', '31 Avenue du Général Leclerc', 92340, 'Bourg-la-Reine', 'France'),
(181, 9171, 'dataset_A.csv', 'THEMIIS', 'themiis-institute.com', '', '+1 480-505-8877', '14455 North Hayden Road', 75009, 'Scottsdale', 'United States'),
(182, 9172, 'dataset_A.csv', 'Sept Lieues', 'sept-lieues.com', '', '+33 4 91 39 39 39', '80 Boulevard de la Corderie', 13007, 'Marseille', 'France'),
(183, 9182, 'dataset_A.csv', 'OpenDigitalEducation', 'opendigitaleducation.com', '', '+33 1 82 63 51 51', '', 75017, 'Paris', 'France'),
(184, 9184, 'dataset_A.csv', 'big boss studio', 'big-boss.com', '', '+33 4 80 80 55 70', '4 Rue de la Liberté', 6000, 'Nice', 'France'),
(185, 9190, 'dataset_A.csv', 'FircoSoft', 'fircosoft.com', '', '33 1 53 44 13 00', '247 Rue de Bercy', 75012, 'Paris', 'France'),
(186, 9193, 'dataset_A.csv', 'EDF', 'edf.fr', '', '+33 140422222', '30 Avenue de Wagram', 75008, 'Paris', 'France'),
(187, 9198, 'dataset_A.csv', 'Sutunam', 'sutunam.com', '', '+33 4 82 53 31 75', '24 Avenue Joannes Masset', 69009, 'Lyon', 'France'),
(188, 9205, 'dataset_A.csv', 'La FoncièreNumérique', 'lafoncierenumerique.com', '', '', '28 Cours Albert 1er', 75008, 'Paris', 'France'),
(189, 9209, 'dataset_A.csv', '365Talents', '365talents.com', '', '', '1 Rue Ferrandière', 69002, 'Lyon', 'France'),
(190, 9214, 'dataset_A.csv', 'MELTY GROUP', 'meltygroup.com', '', '33 1 83 62 00 81', '18 Rue Pasteur', 94270, 'Le Kremlin-Bicêtre', 'France'),
(191, 9223, 'dataset_A.csv', 'Elenbi - EBG', 'ebg.net', '', '+33 1 48 01 68 05', '10 Rue Mercœur', 75011, 'Paris', 'France'),
(192, 9226, 'dataset_A.csv', 'RMC', 'rmc.fr', '', '33 1 71 19 11 91', '12 Rue d\'Oradour-sur-Glane', 92130, 'Issy-les-Moulineaux', 'France'),
(193, 9237, 'dataset_A.csv', 'Ligue de Football Professionnel', 'lfp.fr', '', '', '6 Rue Lo Delibes', 75116, 'Paris', 'France'),
(194, 9238, 'dataset_A.csv', 'Weenect', 'weenect.com', '', '33 6 27 25 80 20', '101 Rue de Sèvres', 75007, 'Paris', 'France'),
(195, 9240, 'dataset_A.csv', 'Ouihelp.fr', 'ouihelp.fr', '', '33 1 83 79 97 58', '130 Rue de Lourmel', 75015, 'Paris-15E-Arrondissement', 'France'),
(196, 9244, 'dataset_A.csv', 'Albus', 'albus.fr', '', '+33 9 80 30 10 51', '', 75000, 'Paris', 'France'),
(197, 9266, 'dataset_A.csv', 'Sogedev', 'sogedev.com', '', '33 1 55 95 80 08', '175/177 RUE D\'AGUESSEAU, BOULOGNE BILLANCOURT', 92100, 'Boulogne-Billancourt', 'France'),
(198, 9274, 'dataset_A.csv', 'UpGraduate', 'upgraduate.com', '', '+33 1 80 88 40 69', '2 Villa Thoreton', 75015, 'Paris', 'France'),
(199, 9291, 'dataset_A.csv', 'accengage', 'accengage.com', '', '33 1 44 56 87 16', '31 Rue du 4 Septembre', 75002, 'Paris', 'France'),
(200, 9294, 'dataset_A.csv', 'bengs lab', 'bengs-lab.com', '', '', '20 Avenue de Friedland', 75008, 'Paris', 'France'),
(201, 9301, 'dataset_A.csv', 'Dorlet', 'dorlet.fr', '', '', '4 IMPASSE DES ARTISANS', 77300, 'MEAUX', 'France'),
(202, 9311, 'dataset_A.csv', 'Leaders League', 'leadersleague.com', '', '33 1 43 92 93 94', '15 Avenue de la Grande-Armée', 75116, 'Paris', 'France'),
(203, 9318, 'dataset_A.csv', 'Kalray', 'kalrayinc.com', '', '(650) 469-3729', '445 Rue Lavoisier', 38330, 'Montbonnot-Saint-Martin', 'France'),
(204, 9319, 'dataset_A.csv', 'SEMANTIWEB', 'semantiweb.fr', '', '', '2 Rue Paul Vaillant Couturier', 92300, 'Levallois-Perret', 'France'),
(205, 9322, 'dataset_A.csv', 'URBAN LINKER', 'urbanlinker.com', '', '+33 1 77 37 23 90', '11 Rue de Poissy', 75005, 'Paris', 'France'),
(206, 9323, 'dataset_A.csv', 'Net Reviews', 'avis-verifies.com', '', '+33 4 13 25 81 70', '20 Avenue Robert Schuman', 40494, 'Marseille', 'France'),
(207, 9336, 'dataset_A.csv', 'Armis', 'armis.tech', '', '', '17 Rue du Louvre', 75001, 'Paris', 'France'),
(208, 9342, 'dataset_A.csv', 'Zapa, S.A.', 'zapa.fr', '', '33 1 42 03 50 20', '54 Rue de Lancry', 75010, 'Paris', 'France'),
(209, 9349, 'dataset_A.csv', 'Spinergie', 'spinergie.com', '', '', '', 0, 'Paris', 'France'),
(210, 9354, 'dataset_A.csv', 'Equancy', 'equancy.com', '', '33 1 77 37 32 23', '47 Rue de Chaillot', 75116, 'Paris', 'France'),
(211, 9358, 'dataset_A.csv', 'OpenDataSoft', 'opendatasoft.com', '', '', '130 Rue de Lourmel', 2109, 'Paris', ''),
(212, 9366, 'dataset_A.csv', 'CanalCloud', 'canalcloud.com', '', '', '75 Avenue Victor Hugo', 92500, 'Rueil-Malmaison', 'France'),
(213, 9386, 'dataset_A.csv', 'HAProxy Technologies, LLC', 'haproxy.com', '', '6174139236', '375 Totten Pond Road', 2451, 'Waltham', 'United States'),
(214, 9411, 'dataset_A.csv', 'VeryChic', 'verychic.com', '', '33 8 26 10 82 82', '23 Rue d\'Anjou', 75008, 'Paris', 'France'),
(215, 9412, 'dataset_A.csv', 'Eiffage', 'Eiffage.com', '', '+33 134658989', '3-7 place de l\'Europe', 78140, 'Asnières-sur-Seine', 'France'),
(216, 9424, 'dataset_A.csv', 'STORE AND SUPPLY', 'store-and-supply.com', '', '', '141 Avenue de Wagram', 75017, 'Paris', 'France'),
(217, 9427, 'dataset_A.csv', 'Wallix', 'wallix.com', '', '33 1 53 42 12 81', '251 Rue du Faubourg Saint-Honoré', 75017, 'Paris', 'France'),
(218, 9429, 'dataset_A.csv', 'Teedji', 'mobeelity.io', '', '', '', 0, 'Paris', 'France'),
(219, 9440, 'dataset_A.csv', 'RIZZE', 'rizze.com', '', '', '16 rue Saulnier', 75009, 'Paris', 'France'),
(220, 9445, 'dataset_A.csv', 'Inventy', 'inventy.com', '', '+33 4 89 82 92 66', '1800 Route des Crêtes', 92130, 'Valbonne', 'France'),
(221, 9479, 'dataset_A.csv', 'MULTICULTURAL NETWORK CORPORATION Terms & Conditions Mentions légales', 'mcnc.tv', '', '', '', 75001, '', ''),
(222, 9489, 'dataset_A.csv', 'Headoo', 'headoo.com', '', '', '8 rue de l\'Isly', 75008, 'Paris', 'France'),
(223, 9495, 'dataset_A.csv', 'Shopmium, a Quotient brand', 'shopmium.com', '', '33 9 70 40 50 98', '11 Rue Tronchet', 75008, 'Paris', 'France'),
(224, 9501, 'dataset_A.csv', 'sandro', 'sandro-paris.com', '', '33 1 40 39 90 21', '61 Rue de Turenne', 75003, 'Paris', 'France'),
(225, 9504, 'dataset_A.csv', 'ESV Digital', 'esvdigital.com', '', '', '9 Gower Street', 60642, 'London', ''),
(226, 9512, 'dataset_A.csv', 'cello.fr', 'cello.fr', '', '+33 9 70 71 23 21', '105 bis rue de Tolbiac', 75013, 'Paris', 'France'),
(227, 9513, 'dataset_A.csv', 'Mutieg', 'mutieg.fr', '', '', '45 RUE GODOT DE MAUROY', 75009, 'PARIS', 'France'),
(228, 9515, 'dataset_A.csv', 'SILICOM SAS', 'silicom.fr', '', '+33 1 46 84 15 15', '125 Boulevard Jean Jaurès', 92100, 'Boulogne-Billancourt', 'France'),
(229, 9522, 'dataset_A.csv', '62 degrés', '62degres.com', '', '', '', 0, 'Paris', 'France'),
(230, 9524, 'dataset_A.csv', 'Adloox', 'adloox.com', '', '+1 917-763-0036', '25 W 39th St', 10018, 'New York', 'United States'),
(231, 9532, 'dataset_A.csv', 'Merci', 'merci-merci.com', '', '33 1 42 77 00 33', '111 Boulevard Beaumarchais', 75003, 'Paris', 'France'),
(232, 9542, 'dataset_A.csv', 'RoomChecking', 'roomchecking.com', '', '+33 9 51 50 42 51', '38 Quai des Carrières', 94220, 'Charenton-le-Pont', 'France'),
(233, 9544, 'dataset_A.csv', 'EKYOG', 'ekyog.com', '', '33 2 23 47 09 90', 'ZAC CAP MALO - AVENUE DU PHARE DE LA BALUE', 35520, 'La Mézière', 'France'),
(234, 9545, 'dataset_A.csv', 'Délégation Catholique pour la Coopération', 'ladcc.org', '', '', '106 Rue du Bac', 75007, 'Paris', 'France'),
(235, 9551, 'dataset_A.csv', 'Brainsonic', 'brainsonic.com', '', '33 1 58 28 19 20', '28 Rue Meslay', 75003, 'Paris', 'France'),
(236, 9553, 'dataset_A.csv', 'YXIME SA', 'yxime.fr', '', '33 1 47 75 07 08', '7 Rue nationale', 92100, 'Boulogne-Billancourt', 'France'),
(237, 9560, 'dataset_A.csv', 'Quantmetry', 'quantmetry.com', '', '', '55 Rue la Boétie', 75008, 'Paris', 'France'),
(238, 9565, 'dataset_A.csv', 'Goomeo', 'goomeo.com', '', '+33 5 55 58 85 80', '117 Rue de Nexon', 87000, 'Limoges', 'France'),
(239, 9566, 'dataset_A.csv', 'LPA-CGR avocats', 'lpalaw.com', '', '33 1 53 93 30 00', '136 Avenue des Champs-Élysées', 75008, 'Paris', 'France'),
(240, 9568, 'dataset_A.csv', 'IK Investment Partners', 'ikinvest.com', '', '442073044300', '5 Lancaster Place', 0, 'London', 'United Kingdom'),
(241, 9569, 'dataset_A.csv', 'aerium', 'aerium.com', '', '', '6a Route de Trèves', 2633, 'Senningerberg', 'Luxembourg'),
(242, 9585, 'dataset_A.csv', 'Applidium', 'applidium.com', '', '33 1 77 62 82 15', '20 Rue Sainte-Croix de la Bretonnerie', 75010, 'Paris', 'France'),
(243, 9590, 'dataset_A.csv', 'PERFORMANCE & INFLUENCE', 'pi-agency.fr', '', '+33 1 83 79 02 05', '94 Avenue Ledru Rollin', 75011, 'Paris-11E-Arrondissement', 'France'),
(244, 9605, 'dataset_A.csv', 'Cyanide', 'cyanide-studio.com', '', '33 1 47 86 30 80', '3 Boulevard des Bouvets', 92000, 'Nanterre', 'France'),
(245, 9607, 'dataset_A.csv', 'Brevalex', 'brevalex.com', '', '', '', 75008, '', 'France'),
(246, 9624, 'dataset_A.csv', 'Easyflyer', 'easyflyer.fr', '', '02 38 56 14 54', '21 Rue de la Fonderie', 45100, 'Orléans', 'France'),
(247, 9630, 'dataset_A.csv', 'tbwa-corporate', 'tbwa-corporate.com', '', '', '50/54 Rue de Silly', 92513, 'Boulogne-Billancourt Cedex', 'France'),
(248, 9636, 'dataset_A.csv', 'Airbus Helicopters', 'airbus.com', '', '', 'Mendelweg 30', 13727, 'Marignane', 'France'),
(249, 9641, 'dataset_A.csv', 'Doctrine', 'doctrine.fr', '', '+33186954209', '74 RUE DE LA TOMBE ISSOIRE', 75014, 'Paris', 'France'),
(250, 9645, 'dataset_A.csv', 'Molotov', 'molotov.tv', '', '', '11 R LA BOETIE', 75008, 'Paris', 'France'),
(251, 9651, 'dataset_A.csv', 'Shapr', 'shapr.co', '', '', '60 Broad Street', 10004, 'New York', 'United States'),
(252, 9653, 'dataset_A.csv', 'Paris Val de Marne', 'valdemarne.com', '', '+33 1 43 90 64 00', '23 Rue Raspail', 94200, 'Ivry-sur-Seine', 'France'),
(253, 9676, 'dataset_A.csv', 'Archos', 'archos.com', '', '+33 169331690', '12 Rue Ampère', 91430, 'Igny', 'France'),
(254, 9680, 'dataset_A.csv', 'Pampa Paris', 'pampa.paris', '', '', '218bis Rue Saint-Denis', 75002, 'Paris', 'France'),
(255, 9683, 'dataset_A.csv', 'Continental Search Alliance', 'continental-search.com', '', '', '103 Schipholweg', 2316, 'Leiden', 'Netherlands'),
(256, 9684, 'dataset_A.csv', 'STid, your RFID partner !', 'stid.com', '', '', '20 PARC D\'ACTIVITÉS DES PRADEAUX', 13850, 'Gréasque', 'France'),
(257, 9698, 'dataset_A.csv', 'Schoolab', 'theschoolab.com', '', '', '', 75002, 'Paris', 'France'),
(258, 9702, 'dataset_A.csv', 'GARDEN PRICE', 'gardenprice.com', '', '33 1 30 05 21 00', '1 Rond-Point Laurent Schwartz', 78310, 'Maurepas', 'France'),
(259, 9710, 'dataset_A.csv', 'tequilarapido', 'tequilarapido.com', '', '+33492008030', '6 Place Garibaldi', 6300, 'Nice', 'France'),
(260, 9713, 'dataset_A.csv', 'Waycom', 'waycom.net', '', '', '24 Avenue du Général Charles de Gaulle', 92150, 'Suresnes', 'France'),
(261, 9727, 'dataset_A.csv', 'Perfect Memory', 'perfect-memory.com', '', '+33 4 73 29 99 28', '33 Boulevard Berthelot', 63400, 'Chamalières', 'France'),
(262, 9731, 'dataset_A.csv', 'Evea Group', 'evea-group.com', '', '33 1 58 75 79 00', '18 Boulevard Gallieni', 92230, 'Gennevilliers', 'France'),
(263, 9750, 'dataset_A.csv', 'Meetic', 'meetic.fr', '', '33158179000', 'RUE AUBER', 75009, 'Paris', 'France'),
(264, 9760, 'dataset_A.csv', 'nam.R', 'namr.com', '', '', '', 0, 'Paris', 'France'),
(265, 9779, 'dataset_A.csv', 'NFrance', 'nfrance.com', '', '+33 5 34 45 55 00', '4 Rue John Fitzgerald Kennedy', 31000, 'Toulouse', 'France'),
(266, 9780, 'dataset_A.csv', 'AntVoice', 'antvoice.com', '', '33 1 83 64 51 08', '28 Rue du Sentier', 75002, 'Paris', 'France'),
(267, 9783, 'dataset_A.csv', 'Altran', 'altran.com', '', '33 (0) 1 58 47 93', '96 Avenue Charles de Gaulle', 92200, 'Neuilly-sur-Seine', 'France'),
(268, 9789, 'dataset_A.csv', 'Collège des Bernardins', 'collegedesbernardins.fr', '', '+33 1 53 10 74 44', '20 Rue de Poissy', 75005, 'Paris', 'France'),
(269, 9791, 'dataset_A.csv', 'Bearstech', 'bearstech.com', '', '+33 1 70 61 60 16', '40 Passage des Panoramas', 75002, 'Paris-2E-Arrondissement', 'France'),
(270, 9793, 'dataset_A.csv', 'Strapi', 'strapi.io', '', '', '128 Rue la Boétie', 75008, 'Paris', 'France'),
(271, 9853, 'dataset_A.csv', 'Data Solutions Fr', 'data-solutions.com', '', '', '', 13851, 'Aix-en-Provence', 'France'),
(272, 9861, 'dataset_A.csv', 'Covéa Finance', 'covea-finance.fr', '', '+33 1 40 06 51 50', '12 Rue Boissy d\'Anglas', 75008, 'Paris', 'France'),
(273, 9865, 'dataset_A.csv', 'Boost.rs', 'boost.rs', '', '+33 1 40 37 41 72', '', 0, 'Boulogne-Billancourt', 'France'),
(274, 9881, 'dataset_A.csv', 'Skillup.co', 'skillup.co', '', '33 1 76 40 02 98', '6 Rue de Saïgon', 75116, 'Paris', 'France'),
(275, 9882, 'dataset_A.csv', 'Architizer', 'architizer.com', '', '+1 646-461-6083', '1 Whitehall Street', 10004, 'New York', 'United States'),
(276, 9883, 'dataset_A.csv', 'Anjali MVP', 'anjalimvp.com', '', '', '1-2 Place des Saisons', 92400, 'Courbevoie', 'France'),
(277, 9896, 'dataset_A.csv', 'PickAsso', 'pickasso.io', '', '+33 9 67 71 34 61', '192 Rue Saint-Denis', 75002, 'Paris', 'France'),
(278, 9901, 'dataset_A.csv', 'DONTNOD Entertainment', 'dont-nod.com', '', '+33144720574', '140 Rue d\'Aubervilliers', 75019, 'Paris-19E-Arrondissement', 'France'),
(279, 9906, 'dataset_A.csv', 'PrestaShop -', 'prestashop.com', '', '', '12 Rue d\'Amsterdam', 33130, 'Paris', ''),
(280, 9918, 'dataset_A.csv', 'AuxiVia', 'auxivia.com', '', '+33 9 72 61 54 14', '', 0, 'Paris', 'France'),
(281, 9922, 'dataset_A.csv', 'Les CCE Allemagne', 'cnccef.org', '', '33 1 53 83 92 92', '22 Avenue Franklin Delano Roosevelt', 75008, 'Paris', 'France'),
(282, 9928, 'dataset_A.csv', 'comScore, Inc.', 'comscore.com', '', '(703) 438-2000', '11950 Democracy Drive', 20190, 'Reston', 'United States'),
(283, 9935, 'dataset_A.csv', 'Kylia France', 'kylia-immo.com', '', '+33147702418', '5 Rue du Faubourg Montmartre', 75009, 'Paris', 'France'),
(284, 9936, 'dataset_A.csv', 'Groupe DFM', 'groupe-dfm.fr', '', '33 1 43 96 80 00', '13 Rue Séjourné', 94000, 'Créteil', 'France'),
(285, 9946, 'dataset_A.csv', 'Seenk', 'seenk.com', '', '', '16 Rue Popincourt', 75011, 'Paris', 'France'),
(286, 9951, 'dataset_A.csv', 'TTC - Testing Training and Consulting', 'ttc-testing.com', '', '+972 9-760-2780', 'POB 4114', 43365, 'Ra\'anana', 'Israel'),
(287, 9954, 'dataset_A.csv', 'Alkemics', 'alkemics.com', '', '33 7 72 70 98 32', '20 Rue Saint-Georges', 75009, 'Paris', 'France'),
(288, 9958, 'dataset_A.csv', 'ZenProspect', 'zenprospect.com', '', '', '2 Embarcadero Center', 94111, 'San Francisco', 'United States'),
(289, 9965, 'dataset_A.csv', 'NES SARL', 'nes.fr', '', '33 1 53 38 57 00', '46 RUE DE PROVENCE', 75009, 'PARIS', 'France'),
(290, 9973, 'dataset_A.csv', 'COTE OUEST', 'coteouest.tv', '', '+2304656402', '3RD FLOOR, CITIUS BUILDING 31 CYBERCITY', 0, 'Ebene', 'Mauritius'),
(291, 9979, 'dataset_A.csv', 'France Digitale', 'francedigitale.org', '', '', '71 Rue du Faubourg Saint-Martin', 75002, 'Paris', 'France'),
(292, 9982, 'dataset_A.csv', 'Synthetron N.V.', 'synthetron.com', '', '+32 2 211 34 01', '44 Paleizenstraat', 1030, 'Schaarbeek', 'Belgium'),
(293, 9986, 'dataset_A.csv', 'Brand and Celebrities', 'brandandcelebrities.com', '', '33 1 84 16 98 13', '27 Boulevard des Italiens', 75009, 'Paris', 'France'),
(294, 9988, 'dataset_A.csv', 'Pulpix, Inc.', 'pulpix.com', '', '(415) 992-5541', '25 West 39th Street', 10018, 'New York', 'United States'),
(295, 10000, 'dataset_A.csv', 'EXCILYS', 'excilys.com', '', '+33141244320', '47 Avenue Carnot', 94230, 'Cachan', 'France'),
(296, 10007, 'dataset_A.csv', 'orchestra', 'orchestra.eu', '', '33 1 44 71 30 20', '38 Avenue de l\'Opéra', 75002, 'Paris', 'France'),
(297, 10027, 'dataset_A.csv', 'VideoProfile Group', 'myvideoprofile.net', '', '', '', 0, '', 'United States'),
(298, 10052, 'dataset_A.csv', 'J. Walter Thompson U.S.A., LLC', 'jwt.com', '', '', '466 Lexington Avenue', 10017, 'New York', 'United States'),
(299, 10055, 'dataset_A.csv', 'Netino', 'netino.fr', '', '33 1 41 45 65 65', '8 Rue de l\'Amiral de Coligny', 75001, 'Paris', 'France'),
(300, 10067, 'dataset_A.csv', 'Affine', 'affine.fr', '', '+33 144904300', '39, RUE WASHINGTON', 75008, 'Paris', 'France'),
(301, 10068, 'dataset_A.csv', 'CREAgile', 'creagile.fr', '', '', '20 Rue de la Belle Feuille', 92100, 'Boulogne-Billancourt', 'France'),
(302, 10073, 'dataset_A.csv', 'Magic Makers', 'magicmakers.fr', '', '33 6 27 31 06 23', '153 Rue de la Croix Nivert', 75015, 'Paris', 'France'),
(303, 10087, 'dataset_A.csv', 'OVH LTD', '42ai.fr', '', '', '', 0, '', ''),
(304, 10096, 'dataset_A.csv', 'Fidesio', 'fidesio.com', '', '+33 1 76 77 27 61', '30 Rue Saint-Marc', 75002, 'Paris', 'France'),
(305, 10129, 'dataset_A.csv', 'UP SELL', 'upsell.fr', '', '+33 1 81 89 41 90', '10 Rue Auber', 92120, 'Montrouge', 'France'),
(306, 10142, 'dataset_A.csv', 'Deliveroo', 'deliveroo.co.uk', '', '44 20 3322 3444', '145-157 St John Street', 0, 'London', 'United Kingdom'),
(307, 10143, 'dataset_A.csv', 'VECTAURY', 'vectaury.io', '', '+33 1 48 25 88 69', '33 Rue la Fayette', 75009, 'Paris', 'France'),
(308, 10144, 'dataset_A.csv', 'HighTekers France', 'hightekers.com', '', '', '', 0, '', ''),
(309, 10145, 'dataset_A.csv', 'The American University of Paris', 'aup.edu', '', '3037576333', '6 Rue du Colonel Combes', 10271, 'Denver', 'United States'),
(310, 10146, 'dataset_A.csv', 'LE CLUB DES EXTRAS', 'leclubdesextras.com', '', '', '', 0, '', ''),
(311, 10156, 'dataset_A.csv', 'PERFORMANCE PARTNER', 'performancepartner.com', '', '', '10 Rue de la Plaine', 78860, 'Saint-Nom-la-Bretèche', 'France'),
(312, 10160, 'dataset_A.csv', 'ELEVON', 'elevon.fr', '', '', '', 0, 'Paris', 'France'),
(313, 10161, 'dataset_A.csv', 'Enercoop', 'enercoop.fr', '', '33 8 11 09 30 99', '18 Quai de la Loire', 75019, 'Paris', 'France'),
(314, 10168, 'dataset_A.csv', 'Nerim', 'nerim.fr', '', '33 1 80 40 05 00', '102 Avenue du Président Kennedy', 75016, 'Paris', 'France'),
(315, 10172, 'dataset_A.csv', 'Opteamis', 'opteamis.com', '', '+33 1 75 43 26 73', '16 Rue Médéric', 75017, 'Paris', 'France'),
(316, 10194, 'dataset_A.csv', 'MeilleursAgents', 'meilleursagents.com', '', '33 1 45 66 24 24', '8 Rue du Sentier', 75002, 'Paris', 'France'),
(317, 10195, 'dataset_A.csv', 'Kingcom', 'kingcom.fr', '', '33 1 40 40 50 00', '4 Rue des Ardennes', 75019, 'Paris', 'France'),
(318, 10201, 'dataset_A.csv', 'Devoteam', 'devoteam.com', '', '+33 1 41 49 48 48', '73 Rue Anatole France', 92300, 'Levallois-Perret', 'France'),
(319, 10203, 'dataset_A.csv', 'HeyTom', 'heytom.io', '', '', '600 West 5th Avenue', 67005, 'Arkansas City', 'United States'),
(320, 10206, 'dataset_A.csv', 'Horizon Software', 'hsoftware.com', '', '+33 1 42 60 94 90', '13 Rue la Fayette', 75008, 'Paris', 'France'),
(321, 10208, 'dataset_A.csv', 'Novencia Group', 'novencia.com', '', '+33 1 44 63 53 13', '21 Rue de la Banque', 75002, 'Paris', 'France'),
(322, 10210, 'dataset_A.csv', 'Sekoia', 'sekoia.fr', '', '33 1 44 43 54 13', '16 Place de la Madeleine', 75008, 'Paris-8E-Arrondissement', 'France'),
(323, 10216, 'dataset_A.csv', 'Nware', 'nware.fr', '', '33 1 84 17 14 00', '12 Rue Jean Antoine de Baïf', 75013, 'Paris', 'France'),
(324, 10227, 'dataset_A.csv', 'SNCD', 'sncd.org', '', '+33 1 40 47 70 00', '68 Boulevard Saint-Marcel', 75005, 'Paris', 'France'),
(325, 10231, 'dataset_A.csv', 'Dakine', 'dakine.com', '', '+1 541-386-3166', '603 Portway Avenue', 97031, 'Hood River', 'United States'),
(326, 10249, 'dataset_A.csv', 'Marriott International, Inc.', 'marriott.com', '', '+1 301-380-3000', '10400 Fernwood Road', 20817, 'Bethesda', 'United States'),
(327, 10260, 'dataset_A.csv', 'BEVOLUTION AGENCY', 'bevolution-agency.com', '', '', '', 0, '', ''),
(328, 10262, 'dataset_A.csv', 'Dictanova', 'dictanova.com', '', '+33 2 85 52 42 36', '6 Rue René Viviani', 44200, 'Nantes', 'France'),
(329, 10272, 'dataset_A.csv', 'Airmis', 'airmis.com', '', '', '37 Rue du Rocher', 75008, 'Paris', 'France'),
(330, 10290, 'dataset_A.csv', 'grafikmente', 'grafikmente.fr', '', '+33 1 42 96 33 17', '118 Rue Réaumur', 75002, 'Paris', 'France'),
(331, 10292, 'dataset_A.csv', 'ECLORE', 'eclore.eu', '', '', 'Mais 1st & 2nd Floors 19 Pennard Road', 0, 'Hammersmith', 'United Kingdom'),
(332, 10296, 'dataset_A.csv', 'MEDIA & BROADCAST TECHNOLOGIES® (MBT)', 'mbt.tv', '', '+33 1 60 42 10 38', '11 Rue de Courtalin', 77700, 'Magny-le-Hongre', 'France'),
(333, 10321, 'dataset_A.csv', 'VERTUO Conseil', 'vertuoconseil.com', '', '', '173 Avenue Achille Peretti', 92200, 'Neuilly-sur-Seine', 'France'),
(334, 10329, 'dataset_A.csv', 'Faïencerie de Gien', 'gien.com', '', '33 2 38 05 21 06', '78 Place de la Victoire', 10707, 'Gien', 'France'),
(335, 10332, 'dataset_A.csv', 'APPEX France', 'appex.fr', '', '+33 1 49 24 93 61', '42 Rue Galilée', 75116, 'Paris', 'France'),
(336, 10338, 'dataset_A.csv', 'WAM World and More', 'wam-group.com', '', '33 1 47 16 97 90', '12 Rue Lincoln', 75008, 'Paris', 'France'),
(337, 10353, 'dataset_A.csv', 'Novidy\'s S.A.', 'novidys.com', '', '33 1 69 19 73 84', '4 Rue Paul Dautier', 78140, 'Vélizy-Villacoublay', 'France'),
(338, 10361, 'dataset_A.csv', 'Shippeo', 'shippeo.com', '', '33 6 29 18 22 74', '48 Rue René Clair', 75007, 'Paris', 'France'),
(339, 10386, 'dataset_A.csv', 'Infopro Digital', 'infopro-digital.com', '', '+33 1 77 92 92 92', '11 Rue Velpeau', 92160, 'Antony', 'France'),
(340, 10388, 'dataset_A.csv', 'IDECSI', 'idecsi.com', '', '', '900 Lafayette Street', 95050, 'Santa Clara', 'United States'),
(341, 10391, 'dataset_A.csv', '5eRue', '5erue.com', '', '+33 1 48 04 05 49', '57 Rue de Turbigo', 75003, 'Paris', 'France'),
(342, 10392, 'dataset_A.csv', 'PSB Paris School of Business', 'psbedu.paris', '', '+33 1 53 36 44 00', '59 Rue Nationale', 75013, 'Paris', 'France'),
(343, 10396, 'dataset_A.csv', 'MANGOPAY', 'mangopay.com', '', '', '4 Rue de la Tour des Dames', 75009, 'Paris', 'France'),
(344, 10410, 'dataset_A.csv', 'Sublime Skinz', 'sublimeskinz.com', '', '33 1 84 79 14 60', '21 Rue Pierre Picard', 75018, 'Paris', 'France'),
(345, 10417, 'dataset_A.csv', 'MIF', 'mifassur.com', '', '33 9 70 15 77 77', '23 Rue Yves Toudic', 75481, 'PARIS', 'France'),
(346, 10443, 'dataset_A.csv', 'Le Quotidien du Médecin', 'lequotidiendumedecin.fr', '', '', '1 Rue Augustine Variot', 92245, 'Malakoff', 'France'),
(347, 10446, 'dataset_A.csv', 'Restopolitan', 'restopolitan.com', '', '33 1 46 34 87 28', '146 Rue Montmartre', 75116, 'Paris', 'France'),
(348, 10447, 'dataset_A.csv', 'Akeance Consulting', 'akeance.com', '', '+33 1 42 94 08 90', '11 Bis Rue Portalis', 75008, 'Paris', 'France'),
(349, 10459, 'dataset_A.csv', 'Lorenz Life Sciences Ltd.', 'lorenz.cc', '', '', '1200 Pennsylvania Avenue', 19102, 'Philadelphia', 'United States'),
(350, 10460, 'dataset_A.csv', 'CodinGame', 'codingame.com', '', '+33 9 54 39 85 49', 'CAP OMEGA, ROND-POINT BENJANMIN FRANKLLIN, CEDEX 1', 39521, 'Montpellier', 'France'),
(351, 10462, 'dataset_A.csv', 'Belharra sas', 'belharra.fr', '', '+33 5 59 70 40 70', '4 Impasse Oihana', 64200, 'Bassussarry', 'France'),
(352, 10469, 'dataset_A.csv', 'BOOK MY MUSIC', 'bookmymusic.fr', '', '', '', 0, '', ''),
(353, 10473, 'dataset_A.csv', 'ENSCI_LesAteliers', 'ensci.com', '', '', '48 Rue Saint-Sabin', 75011, 'Paris', 'France'),
(354, 10474, 'dataset_A.csv', 'Atelier NA', 'atelierna.com', '', '33 6 98 70 55 25', '36 RUE PAUL CEZANNE', 75008, 'Paris', 'France'),
(355, 10482, 'dataset_A.csv', 'H8 COLLECTION HOTEL GROUP', 'h8-collection.com', '', '33 1 53 64 90 65', '162 Boulevard Haussmann', 75008, 'Paris', 'France'),
(356, 10489, 'dataset_A.csv', 'Welcome to the Jungle', 'welcometothejungle.co', '', '+33 9 67 17 53 86', '11 Rue Bachaumont', 75002, 'Paris', 'France'),
(357, 10491, 'dataset_A.csv', 'ADALIA', 'adalia.ma', '', '+212 5226-40640', '1 PLACE BELAIR', 20100, '????? ???????', 'Morocco'),
(358, 10497, 'dataset_A.csv', 'QualyCloud', 'qualycloud.com', '', '+33 1 40 54 89 64', '42 Rue Legendre', 75017, 'Paris', 'France'),
(359, 10501, 'dataset_A.csv', 'Keyade', 'keyade.com', '', '33 1 44 79 90 02', '57 Rue de Villiers', 92200, 'Neuilly-sur-Seine', 'France'),
(360, 10505, 'dataset_A.csv', 'Pandacraft', 'pandacraft.com', '', '33 6 27 15 10 29', '22 Rue de Palestro', 75002, 'Paris', 'France'),
(361, 10511, 'dataset_A.csv', 'theTribe.io', 'thetribe.io', '', '+33 9 72 47 69 14', '1 Rue Suffren', 44000, 'Nantes', 'France'),
(362, 10524, 'dataset_A.csv', 'VINN', 'myvinn.com', '', '+49 2151 484420', '', 94043, 'Krefeld', 'Germany'),
(363, 10531, 'dataset_A.csv', '21Net Ltd.', '21net.com', '', '', '3 Broad Chare', 0, 'Newcastle upon Tyne', 'United Kingdom'),
(364, 10537, 'dataset_A.csv', 'Rivoli Patrimoine', 'rivoli-patrimoine.fr', '', '+33 1 48 87 53 02', '13 Rue de Rivoli', 75004, 'Paris', 'France'),
(365, 10548, 'dataset_A.csv', 'Zelros', 'zelros.com', '', '', '', 75013, 'Paris', 'France'),
(366, 10556, 'dataset_A.csv', 'Cirpack', 'cirpack.com', '', '33 1 83 75 38 00', '26 Rue d\'Oradour-sur-Glane', 75015, 'Paris', 'France'),
(367, 10561, 'dataset_A.csv', 'SNCZ', 'sncz.net', '', '', 'RUE EMILE PIERRONNE', 59111, 'Neuville-sur-Escaut', 'France'),
(368, 10580, 'dataset_A.csv', 'PHENIX', 'wearephenix.com', '', '', '16 Rue Darcet', 75017, 'Paris', 'France'),
(369, 10583, 'dataset_A.csv', 'GROUPE ITOP', 'itop.fr', '', '+33 9 70 72 29 29', '29 Rue Jean Rostand', 91400, 'Orsay', 'France'),
(370, 10586, 'dataset_A.csv', 'LeKiosk', 'lekiosk.com', '', '33 1 53 53 01 90', '10 Rue de la Pépinière', 75008, 'Paris', 'France'),
(371, 10600, 'dataset_A.csv', 'Voltalis', 'voltalis.com', '', '33 1 56 43 25 18', '10 Rue Lincoln', 75008, 'Paris', 'France'),
(372, 10626, 'dataset_A.csv', 'Steve Agency', 'steve.paris', '', '', '40 Rue Louis Blanc', 75010, 'Paris', 'France'),
(373, 10634, 'dataset_A.csv', 'Praditus', 'praditus.com', '', '33 6 14 69 89 71', '33 Rue Raffet', 75016, 'Paris', 'France'),
(374, 10635, 'dataset_A.csv', 'Mawenzi Partners', 'mawenzi-partners.com', '', '+33 1 83 64 28 39', '22 Rue de Madrid', 75008, 'Paris', 'France'),
(375, 10646, 'dataset_A.csv', 'Bidmotion', 'bidmotion.com', '', '', '76 Rue du Faubourg Saint-Denis', 75002, 'Paris', 'France'),
(376, 10649, 'dataset_A.csv', 'CXP Group', 'cxpgroup.com', '', '+33 1 53 05 05 53', '', 75017, '', 'France'),
(377, 10661, 'dataset_A.csv', 'Gandi', 'gandi.net', '', '+33 1 70 37 76 61', '65 Boulevard Masséna', 75013, 'Paris', 'France'),
(378, 10663, 'dataset_A.csv', 'Adservio IT Quality Experts', 'adservio.fr', '', '+33 1 85 09 18 09', '154 Boulevard Haussmann', 75008, 'Paris', 'France'),
(379, 10672, 'dataset_A.csv', 'Hubware', 'hubwa.re', '', '', '5 Rue Saint-Benoît', 75006, 'Paris', 'France'),
(380, 10673, 'dataset_A.csv', 'Seeqle', 'seeqle.com', '', '', '14 Rue Darcet', 75017, 'Paris', 'France'),
(381, 10675, 'dataset_A.csv', 'upday for Samsung', 'upday.com', '', '+49 30 2591727850', '65 Axel-Springer-Straße', 10969, 'Berlin', 'Germany'),
(382, 10683, 'dataset_A.csv', 'Incenteev', 'incenteev.com', '', '+33 805 69 09 18', '126 Rue Lecourbe', 75015, 'Paris', 'France'),
(383, 10686, 'dataset_A.csv', 'Castalie', 'castalie.com', '', '33 1 46 20 10 00', '8 Boulevard Haussmann', 75009, 'Paris', 'France'),
(384, 10688, 'dataset_A.csv', '180gram', '180-g.com', '', '', '', 0, '', ''),
(385, 10692, 'dataset_A.csv', 'INBOX', 'inbox-group.com', '', '+33 1 55 48 02 70', '30 Rue Vincent Moris', 92240, 'Malakoff', 'France'),
(386, 10716, 'dataset_A.csv', 'KiWATCH', 'kiwatch.com', '', '+33 806 11 00 12', 'Le Mail', 44700, 'Orvault', 'France'),
(387, 10732, 'dataset_A.csv', 'Clustaar', 'clustaar.com', '', '', '28 Rue du Faubourg Poissonnière', 75010, 'Paris', 'France'),
(388, 10745, 'dataset_A.csv', 'NAVYA', 'navya.tech', '', '', '1 Rue Docteur Fleury Pierre Papillon', 69100, 'Villeurbanne', 'France'),
(389, 10754, 'dataset_A.csv', 'Bam.tech', 'bam.tech', '', '', '48 Boulevard des Batignolles', 75017, 'Paris', 'France'),
(390, 10767, 'dataset_A.csv', 'Wandercraft', 'wandercraft.eu', '', '33 1 41 13 15 18', '86 Rue de Paris', 91400, 'Orsay', 'France'),
(391, 10770, 'dataset_A.csv', 'Change', 'change.bz', '', '33 1 44 37 13 14', '3 Rue de Caumartin', 75009, 'Paris', 'France'),
(392, 10784, 'dataset_A.csv', 'HelloAsso', 'helloasso.com', '', '33 5 24 72 28 17', '6 Rue Jean Bedouret', 33100, 'Bordeaux', 'France'),
(393, 10795, 'dataset_A.csv', 'WATSOFT', 'watsoft.com', '', '+33 5 56 15 75 70', '3 Allée de la Crabette', 33600, 'Pessac', 'France'),
(394, 10808, 'dataset_A.csv', 'L\'argus', 'largus.fr', '', '33 1 53 29 11 00', '11-13 RUE DES PETITS HOTELS', 75010, 'Paris', 'France'),
(395, 10809, 'dataset_A.csv', 'ISPA Consulting', 'ispaconsulting.com', '', '+33 1 78 14 14 20', '11 Cours Valmy', 92800, 'Puteaux', 'France'),
(396, 10811, 'dataset_A.csv', 'Konnect systems', 'konnect-systems.com', '', '', '64 RUE NATIONALE', 60110, 'AMBLAINVILLE', 'France'),
(397, 10814, 'dataset_A.csv', 'Weaving Group', 'weaving-group.com', '', '+33 1 40 28 24 21', '', 75002, 'Paris', 'France'),
(398, 10818, 'dataset_A.csv', 'Parella', 'parella.fr', '', '+33 1 85 65 55 00', '105 Rue du Faubourg Saint-Honoré', 75008, 'Paris', 'France'),
(399, 10831, 'dataset_A.csv', 'Proparco', 'proparco.fr', '', '+33 1 53 44 31 08', '151 RUE SAINT HONORÉ', 75001, 'Paris', 'France'),
(400, 10839, 'dataset_A.csv', 'HEAVEN', 'heaven.fr', '', '33 1 75 77 63 00', '19 Rue de Cléry', 75002, 'Paris', 'France'),
(401, 10842, 'dataset_A.csv', 'Converteo', 'converteo.com', '', '33 1 44 77 99 43', '15 Place de la Nation', 75015, 'Paris', 'France'),
(402, 10845, 'dataset_A.csv', 'Billecart-Salmon', 'champagne-billecart.fr', '', '+33 3 26 52 60 22', '40 Rue Carnot', 75017, 'Mareuil-sur-Ay', 'France'),
(403, 10855, 'dataset_A.csv', 'isatech', 'isatech.fr', '', '+33 820 32 03 10', '8 Rue Jean Rouxel', 44700, 'Orvault', 'France'),
(404, 10861, 'dataset_A.csv', 'Lunchr', 'lunc.hr', '', '', '650 7th Street', 94103, 'San Francisco', 'United States'),
(405, 10865, 'dataset_A.csv', 'CosaVostra', 'cosavostra.com', '', '+33 1 77 13 50 80', '71 Rue de Saussure', 75017, 'Paris', 'France'),
(406, 10895, 'dataset_A.csv', 'NineSigma, Inc.', 'ninesigma.com', '', '216-295-4800', '23611 Chagrin Boulevard', 44122, 'Beachwood', 'United States'),
(407, 10920, 'dataset_A.csv', 'Advalo', 'advalo.com', '', '', '28 rue du Sentier', 75001, 'Paris', 'France'),
(408, 10925, 'dataset_A.csv', 'Amplitude Studios', 'amplitude-studios.com', '', '33 1 44 68 33 89', '43 RUE DE LA BRÈCHE AUX LOUPS', 75012, 'Paris', 'France'),
(409, 10926, 'dataset_A.csv', 'BlueBoard', 'blueboard.io', '', '', '', 98108, '', ''),
(410, 10927, 'dataset_A.csv', 'Criteo', 'storetail.com', '', '+33 1 40 40 22 90', '32 Rue Blanche', 75009, 'Paris', 'France'),
(411, 10936, 'dataset_A.csv', 'Coheris', 'coheris.com', '', '+33 157326060', '4 Rue du Port aux Vins', 92150, 'Suresnes', 'France'),
(412, 10938, 'dataset_A.csv', 'Carbon Leadership', 'carbonleadership.co', '', '', '', 0, '', 'France'),
(413, 10941, 'dataset_A.csv', 'CHANTAL BAUDRON SAS', 'http://chantalbaudron.fr', 'amin.bencheikh@esprit.tn', '+21654584310', '8 rue marakech', 8090, 'kelibia', '236');

-- --------------------------------------------------------

--
-- Structure de la table `backendapp_matches`
--

DROP TABLE IF EXISTS `backendapp_matches`;
CREATE TABLE IF NOT EXISTS `backendapp_matches` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `left_company_id` bigint(20) NOT NULL,
  `right_company_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `backendapp_matches_left_company_id_id_d8325900` (`left_company_id`),
  KEY `backendapp_matches_right_company_id_id_ee50c633` (`right_company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `backendapp_matches`
--

INSERT INTO `backendapp_matches` (`id`, `left_company_id`, `right_company_id`) VALUES
(2, 18, 413),
(4, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-10-19 17:04:40.308796', '1', 'Matches object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-10-19 17:05:24.847465', '413', '10941', 2, '[{\"changed\": {\"fields\": [\"Website\", \"Email\", \"Phone\", \"Address\", \"Postal code\", \"City\", \"Country\"]}}, {\"added\": {\"name\": \"matches\", \"object\": \"Matches object (2)\"}}]', 7, 1),
(3, '2021-10-19 17:07:20.789649', '3', 'Matches object (3)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2021-10-19 17:08:52.588789', '1', 'Matches object (1)', 2, '[{\"changed\": {\"fields\": [\"Left company\", \"Right company\"]}}]', 8, 1),
(5, '2021-10-19 17:09:15.198254', '1', 'Matches object (1)', 2, '[{\"changed\": {\"fields\": [\"Left company\", \"Right company\"]}}]', 8, 1),
(6, '2021-10-19 17:32:00.489576', '1', 'Matches object (1)', 3, '', 8, 1),
(7, '2021-10-19 17:32:25.962164', '3', 'Matches object (3)', 3, '', 8, 1),
(8, '2021-10-19 17:32:41.732495', '4', 'Matches object (4)', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'backendapp', 'companies'),
(8, 'backendapp', 'matches');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-10-19 16:51:19.624719'),
(2, 'auth', '0001_initial', '2021-10-19 16:51:19.818832'),
(3, 'admin', '0001_initial', '2021-10-19 16:51:19.869696'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-10-19 16:51:19.879244'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-19 16:51:19.889216'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-10-19 16:51:19.926147'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-10-19 16:51:19.944099'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-10-19 16:51:19.961054'),
(9, 'auth', '0004_alter_user_username_opts', '2021-10-19 16:51:19.971026'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-10-19 16:51:19.989975'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-10-19 16:51:19.991971'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-19 16:51:20.002945'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-10-19 16:51:20.020910'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-19 16:51:20.039211'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-10-19 16:51:20.059065'),
(16, 'auth', '0011_update_proxy_permissions', '2021-10-19 16:51:20.069039'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-19 16:51:20.086664'),
(18, 'backendapp', '0001_initial', '2021-10-19 16:51:20.147501'),
(19, 'backendapp', '0002_auto_20211019_0144', '2021-10-19 16:51:20.166451'),
(20, 'sessions', '0001_initial', '2021-10-19 16:51:20.185400');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('pqm7mgz2i084gtr4agn8i013d5ptfyij', '.eJxVjMsOwiAQRf-FtSEM5enSvd9AGBikaiAp7cr479qkC93ec859sRC3tYZt0BLmzM4M2Ol3w5ge1HaQ77HdOk-9rcuMfFf4QQe_9kzPy-H-HdQ46rdWaDUZ0r6gt6J4cCidkinFyUvjAKUshcAAeQdyEg40GoeWPCmRErH3B9OVN4c:1mcsLO:J_Q6kBnENd0rZ9yDKGNwe57c2xUzkNRJyqGHtOzxESw', '2021-11-02 16:52:06.231848'),
('xlsppih064nncair7ds8ly9easbl50j0', '.eJxVjEEOwiAQRe_C2hCgwBSX7j0DmYFRqgaS0q6Md7dNutDtf-_9t4i4LiWunec4ZXEWRpx-N8L05LqD_MB6bzK1uswTyV2RB-3y2jK_Lof7d1Cwl61Oo2OrEBwRO3KQkQL7pJXRAATKGmPpBhrDgDCG5IPnzcFsBk2ajfh8Ae2TOCQ:1mdATW:jxxOgurTkqUOcgRI7wm3L8JOs58-5c0CBFh5fR4h824', '2021-11-03 12:13:42.354541');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
