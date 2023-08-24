-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 11 mai 2023 à 20:49
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restaurantbd`
--
CREATE DATABASE IF NOT EXISTS `restaurantbd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurantbd`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'AdminTotal'),
(2, 'Utilisateur');

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(44, 2, 20),
(45, 2, 28),
(41, 2, 32),
(42, 2, 36),
(43, 2, 40);

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add type', 7, 'add_type'),
(26, 'Can change type', 7, 'change_type'),
(27, 'Can delete type', 7, 'delete_type'),
(28, 'Can view type', 7, 'view_type'),
(29, 'Can add ville', 8, 'add_ville'),
(30, 'Can change ville', 8, 'change_ville'),
(31, 'Can delete ville', 8, 'delete_ville'),
(32, 'Can view ville', 8, 'view_ville'),
(33, 'Can add restaurant', 9, 'add_restaurant'),
(34, 'Can change restaurant', 9, 'change_restaurant'),
(35, 'Can delete restaurant', 9, 'delete_restaurant'),
(36, 'Can view restaurant', 9, 'view_restaurant'),
(37, 'Can add commentaire', 10, 'add_commentaire'),
(38, 'Can change commentaire', 10, 'change_commentaire'),
(39, 'Can delete commentaire', 10, 'delete_commentaire'),
(40, 'Can view commentaire', 10, 'view_commentaire');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$6HyrA0fBCr7XUjJyDPHZTK$YAGzoSiZmXTRNjrcW24Bb6qYKk8dyGRZEJIBvXZJTjg=', '2023-05-11 17:39:14.227673', 1, 'admin', '', '', '', 1, 1, '2023-05-07 20:04:37.000000'),
(2, 'pbkdf2_sha256$390000$FV2ndX3W7PGX2IWjsfndFX$ngmYnOTDZw1r/Jd92X4FIRayjA6EuQdoAkGV9Zah/mI=', NULL, 0, 'Titouan', '', '', '', 0, 1, '2023-05-09 01:11:46.000000'),
(3, 'pbkdf2_sha256$390000$elLGqMxFVMNZYD6yf1bnMi$Wi06FFfbdEpkOvPEZVnh0O3rVaCt6k1RV4IIyJmeLNk=', NULL, 0, 'Titouan2', '', '', '', 0, 1, '2023-05-09 01:13:24.779486'),
(4, 'pbkdf2_sha256$390000$GuldFt6nIvVCvnaJ92ixmf$gwCSo5BDV7++sVm951V/Pb86upSJJtxMrfyeJLeenIA=', '2023-05-09 16:59:56.884836', 0, 'TitouanSpUti', '', '', '', 0, 1, '2023-05-09 01:36:55.941875'),
(5, 'pbkdf2_sha256$390000$Bba4EQEvUsE0A6GV5D31Jk$YGYYxEEBgkD/YlI5aGOGZSK1qDlXejyeZGzuXIDMT/E=', '2023-05-11 17:39:42.077654', 0, 'UtilisateurTest', '', '', '', 0, 1, '2023-05-11 17:34:04.877477');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 1, 1),
(1, 2, 2),
(2, 4, 2),
(4, 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-07 20:05:17.331030', '1', 'Asiatique', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-05-07 20:05:20.615747', '2', 'Italien', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-05-07 20:05:24.313136', '3', 'Québécois', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-05-07 20:05:26.940606', '4', 'Français', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-05-07 20:10:26.697408', '1', 'Bello Ristorante', 1, '[{\"added\": {}}]', 9, 1),
(6, '2023-05-07 20:11:03.428237', '2', 'Saigon Bangkok', 1, '[{\"added\": {}}]', 9, 1),
(7, '2023-05-07 22:32:42.956864', '1', 'Bello Ristorante', 1, '[{\"added\": {}}]', 10, 1),
(8, '2023-05-07 23:06:32.413188', '1', 'Bello Ristorante', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 10, 1),
(9, '2023-05-07 23:13:35.604385', '1', 'Bello Ristorante', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 10, 1),
(10, '2023-05-08 14:44:40.376427', '1', 'Bello Ristorante', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 10, 1),
(11, '2023-05-08 14:44:53.995599', '1', 'Bello Ristorante', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 10, 1),
(12, '2023-05-08 14:53:30.909368', '1', 'Bello Ristorante', 2, '[{\"changed\": {\"fields\": [\"Texte\", \"Note\"]}}]', 10, 1),
(13, '2023-05-08 15:02:15.292988', '1', 'Bello Ristorante', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 10, 1),
(14, '2023-05-08 15:26:18.031535', '1', 'Bello Ristorante', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 10, 1),
(15, '2023-05-08 15:26:44.310567', '2', 'Bello Ristorante', 1, '[{\"added\": {}}]', 10, 1),
(16, '2023-05-08 15:28:00.008167', '1', 'Bello Ristorante', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 10, 1),
(17, '2023-05-08 15:32:26.855224', '1', 'Bello Ristorante', 2, '[]', 10, 1),
(18, '2023-05-08 15:50:02.889101', '3', 'Saint Hubert', 1, '[{\"added\": {}}]', 9, 1),
(19, '2023-05-09 01:25:27.677225', '1', 'AdminTotal', 1, '[{\"added\": {}}]', 3, 1),
(20, '2023-05-09 01:27:00.465769', '2', 'Utilisateur', 1, '[{\"added\": {}}]', 3, 1),
(21, '2023-05-09 01:36:26.496536', '2', 'Titouan', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(22, '2023-05-09 16:56:28.103555', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'Restaurants', 'commentaire'),
(9, 'Restaurants', 'restaurant'),
(7, 'Restaurants', 'type'),
(8, 'Restaurants', 'ville'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-07 20:04:10.570070'),
(2, 'auth', '0001_initial', '2023-05-07 20:04:10.775670'),
(3, 'Restaurants', '0001_initial', '2023-05-07 20:04:10.878922'),
(4, 'admin', '0001_initial', '2023-05-07 20:04:10.929918'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-05-07 20:04:10.936016'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-07 20:04:10.941014'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-05-07 20:04:10.974389'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-05-07 20:04:11.000494'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-05-07 20:04:11.012638'),
(10, 'auth', '0004_alter_user_username_opts', '2023-05-07 20:04:11.018740'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-05-07 20:04:11.037691'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-05-07 20:04:11.039692'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-05-07 20:04:11.044772'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-05-07 20:04:11.055966'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-05-07 20:04:11.068640'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-05-07 20:04:11.080723'),
(17, 'auth', '0011_update_proxy_permissions', '2023-05-07 20:04:11.087845'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-05-07 20:04:11.098467'),
(19, 'sessions', '0001_initial', '2023-05-07 20:04:11.114473'),
(20, 'Restaurants', '0002_alter_commentaire_note', '2023-05-07 23:02:07.622344'),
(21, 'Restaurants', '0003_commentaire_titre', '2023-05-08 14:58:38.674633');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('lrvhic0vecxj3uyzlz6zy3t076wrwq0h', '.eJxVjMsOwiAQRf-FtSFQ3i7d-w0EZgapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZkZdvrdcoIHtR3gPbVb59DbusyZ7wo_6ODXjvS8HO7fQU2jfusJRVJaZaNI-JKkRO0tWB_QZZShCOFdltqDNuCIinSOLIBBJybjg2TvD9pxN4A:1pxAGU:gobum4T4rIYJgct7mqQwvcB3bpDCEIxUXBY1ynKXd9o', '2023-05-25 17:39:42.078689');

-- --------------------------------------------------------

--
-- Structure de la table `restaurants_commentaire`
--

CREATE TABLE `restaurants_commentaire` (
  `id` bigint(20) NOT NULL,
  `texte` longtext NOT NULL,
  `note` int(11) NOT NULL,
  `date` date NOT NULL,
  `restaurant_id` bigint(20) NOT NULL,
  `userName_id` int(11) NOT NULL,
  `titre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `restaurants_commentaire`
--

INSERT INTO `restaurants_commentaire` (`id`, `texte`, `note`, `date`, `restaurant_id`, `userName_id`, `titre`) VALUES
(1, 'Dans cette agréable restaurant qu\'est Bello Ristorante, ma famille et moi nous somme vu accueillir comme des princes. La nourriture est délicieuses ! Quel agréable surprise', 2, '2023-05-07', 1, 1, 'Génial !'),
(3, 'dfgdfg', 3, '2023-05-11', 1, 5, 'Un restaurant italien pas comme les autres'),
(4, 'Le meilleur poulet de ma vie !', 3, '2023-05-11', 4, 5, 'Un poulet à renverser les papilles'),
(5, 'Mon mari et moi nous somme fais accueillir comme des malprores', 1, '2023-05-11', 4, 5, 'Très décu');

-- --------------------------------------------------------

--
-- Structure de la table `restaurants_restaurant`
--

CREATE TABLE `restaurants_restaurant` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `ville_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `restaurants_restaurant`
--

INSERT INTO `restaurants_restaurant` (`id`, `nom`, `description`, `image`, `type_id`, `ville_id`) VALUES
(1, 'Bello Ristorante', 'Restaurant italien raffiné servant risottos, pâtes et pizzas maison dont la terrasse offre une vue imprenable.', 'BelloRistorante.jpg', 2, 277),
(2, 'Saigon Bangkok', 'Petit restaurant à l\'ambiance décontractée proposant un menu composé de plats vietnamiens et thaïlandais.', 'SaigonBankok.png', 1, 277),
(4, 'Restaurant et bar St-Hubert', 'Le meilleur poulet BBQ de Rivière-du-Loup se trouve au restaurant St-Hubert! Cuit 3 heures sur la broche, assaisonné parfaitement, vous en redemanderez! Nos côtes levées sont aussi à essayer. Passez en salle à manger, au comptoir pour emporter, ou faites livrer!', 'stHubertJPG.jpg', 3, 143),
(5, 'Saigon Bangkok Montreal', 'Pareil que celui de Québec', 'SaigonBankok_KNS5kRq.png', 1, 787);

-- --------------------------------------------------------

--
-- Structure de la table `restaurants_type`
--

CREATE TABLE `restaurants_type` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `restaurants_type`
--

INSERT INTO `restaurants_type` (`id`, `nom`) VALUES
(1, 'Asiatique'),
(2, 'Italien'),
(3, 'Québécois'),
(4, 'Français');

-- --------------------------------------------------------

--
-- Structure de la table `restaurants_ville`
--

CREATE TABLE `restaurants_ville` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `restaurants_ville`
--

INSERT INTO `restaurants_ville` (`id`, `nom`) VALUES
(1, 'Les Îles-de-la-Madeleine'),
(2, 'Grosse-Île'),
(3, 'Percé'),
(4, 'Sainte-Thérèse-de-Gaspé'),
(5, 'Grande-Rivière'),
(6, 'Chandler'),
(7, 'Port-Daniel--Gascons'),
(8, 'Mont-Alexandre'),
(9, 'Gaspé'),
(10, 'Cloridorme'),
(11, 'Petite-Vallée'),
(12, 'Grande-Vallée'),
(13, 'Murdochville'),
(14, 'Rivière-Saint-Jean'),
(15, 'Collines-du-Basque'),
(16, 'Sainte-Madeleine-de-la-Rivière-Madeleine'),
(17, 'Saint-Maxime-du-Mont-Louis'),
(18, 'Mont-Saint-Pierre'),
(19, 'Rivière-à-Claude'),
(20, 'Marsoui'),
(21, 'La Martre'),
(22, 'Sainte-Anne-des-Monts'),
(23, 'Cap-Chat'),
(24, 'Mont-Albert'),
(25, 'Coulée-des-Adolphe'),
(26, 'Shigawake'),
(27, 'Saint-Godefroi'),
(28, 'Hope Town'),
(29, 'Hope'),
(30, 'Paspébiac'),
(31, 'New Carlisle'),
(32, 'Bonaventure'),
(33, 'Saint-Elzéar'),
(34, 'Saint-Siméon'),
(35, 'Caplan'),
(36, 'Saint-Alphonse'),
(37, 'New Richmond'),
(38, 'Cascapédia--Saint-Jules'),
(39, 'Rivière-Bonaventure'),
(40, 'Maria'),
(41, 'Carleton-sur-Mer'),
(42, 'Nouvelle'),
(43, 'Escuminac'),
(44, 'Pointe-à-la-Croix'),
(45, 'Ristigouche-Partie-Sud-Est'),
(46, 'Saint-André-de-Restigouche'),
(47, 'Matapédia'),
(48, 'Saint-Alexis-de-Matapédia'),
(49, 'Saint-François-d\'Assise'),
(50, 'L\'Ascension-de-Patapédia'),
(51, 'Gesgapegiag'),
(52, 'Listuguj'),
(53, 'Rivière-Nouvelle'),
(54, 'Ruisseau-Ferguson'),
(55, 'Sainte-Marguerite-Marie'),
(56, 'Sainte-Florence'),
(57, 'Causapscal'),
(58, 'Albertville'),
(59, 'Saint-Léon-le-Grand'),
(60, 'Saint-Zénon-du-Lac-Humqui'),
(61, 'Sainte-Irène'),
(62, 'Amqui'),
(63, 'Lac-au-Saumon'),
(64, 'Saint-Alexandre-des-Lacs'),
(65, 'Saint-Tharcisius'),
(66, 'Saint-Vianney'),
(67, 'Val-Brillant'),
(68, 'Sayabec'),
(69, 'Saint-Cléophas'),
(70, 'Saint-Moïse'),
(71, 'Saint-Noël'),
(72, 'Saint-Damase'),
(73, 'Routhierville'),
(74, 'Rivière-Vaseuse'),
(75, 'Rivière-Patapédia-Est'),
(76, 'Lac-Casault'),
(77, 'Ruisseau-des-Mineurs'),
(78, 'Lac-Alfred'),
(79, 'Lac-Matapédia'),
(80, 'Les Méchins'),
(81, 'Saint-Jean-de-Cherbourg'),
(82, 'Grosses-Roches'),
(83, 'Sainte-Félicité'),
(84, 'Saint-Adelme'),
(85, 'Saint-René-de-Matane'),
(86, 'Sainte-Paule'),
(87, 'Matane'),
(88, 'Saint-Léandre'),
(89, 'Saint-Ulric'),
(90, 'Baie-des-Sables'),
(91, 'Rivière-Bonjour'),
(92, 'La Rédemption'),
(93, 'Saint-Charles-Garnier'),
(94, 'Les Hauteurs'),
(95, 'Sainte-Jeanne-d\'Arc'),
(96, 'Saint-Gabriel-de-Rimouski'),
(97, 'Saint-Donat'),
(98, 'Sainte-Angèle-de-Mérici'),
(99, 'Padoue'),
(100, 'Métis-sur-Mer'),
(101, 'Saint-Octave-de-Métis'),
(102, 'Grand-Métis'),
(103, 'Price'),
(104, 'Saint-Joseph-de-Lepage'),
(105, 'Mont-Joli'),
(106, 'Sainte-Flavie'),
(107, 'Sainte-Luce'),
(108, 'Lac-des-Eaux-Mortes'),
(109, 'Lac-à-la-Croix'),
(110, 'Esprit-Saint'),
(111, 'La Trinité-des-Monts'),
(112, 'Saint-Narcisse-de-Rimouski'),
(113, 'Saint-Marcellin'),
(114, 'Saint-Anaclet-de-Lessard'),
(115, 'Rimouski'),
(116, 'Saint-Valérien'),
(117, 'Saint-Fabien'),
(118, 'Saint-Eugène-de-Ladrière'),
(119, 'Lac-Huron'),
(120, 'Saint-Clément'),
(121, 'Saint-Jean-de-Dieu'),
(122, 'Sainte-Rita'),
(123, 'Saint-Guy'),
(124, 'Saint-Médard'),
(125, 'Sainte-Françoise'),
(126, 'Saint-Éloi'),
(127, 'Trois-Pistoles'),
(128, 'Notre-Dame-des-Neiges'),
(129, 'Saint-Mathieu-de-Rioux'),
(130, 'Saint-Simon-de-Rimouski'),
(131, 'Lac-Boisbouscache'),
(132, 'Saint-Cyprien'),
(133, 'Saint-Hubert-de-Rivière-du-Loup'),
(134, 'Saint-Antonin'),
(135, 'Saint-Modeste'),
(136, 'Saint-François-Xavier-de-Viger'),
(137, 'Saint-Épiphane'),
(138, 'Saint-Paul-de-la-Croix'),
(139, 'L\'Isle-Verte'),
(140, 'Notre-Dame-des-Sept-Douleurs'),
(141, 'Cacouna'),
(142, 'Saint-Arsène'),
(143, 'Rivière-du-Loup'),
(144, 'Notre-Dame-du-Portage'),
(145, 'Kataskomiq'),
(146, 'Cacouna'),
(147, 'Dégelis'),
(148, 'Saint-Jean-de-la-Lande'),
(149, 'Packington'),
(150, 'Saint-Marc-du-Lac-Long'),
(151, 'Rivière-Bleue'),
(152, 'Saint-Eusèbe'),
(153, 'Saint-Juste-du-Lac'),
(154, 'Auclair'),
(155, 'Lejeune'),
(156, 'Biencourt'),
(157, 'Lac-des-Aigles'),
(158, 'Saint-Michel-du-Squatec'),
(159, 'Témiscouata-sur-le-Lac'),
(160, 'Saint-Pierre-de-Lamy'),
(161, 'Saint-Louis-du-Ha! Ha!'),
(162, 'Saint-Elzéar-de-Témiscouata'),
(163, 'Saint-Honoré-de-Témiscouata'),
(164, 'Pohénégamook'),
(165, 'Saint-Athanase'),
(166, 'Mont-Carmel'),
(167, 'Saint-Bruno-de-Kamouraska'),
(168, 'Saint-Pascal'),
(169, 'Sainte-Hélène-de-Kamouraska'),
(170, 'Saint-Joseph-de-Kamouraska'),
(171, 'Saint-Alexandre-de-Kamouraska'),
(172, 'Saint-André-de-Kamouraska'),
(173, 'Saint-Germain-de-Kamouraska'),
(174, 'Kamouraska'),
(175, 'Saint-Denis-De La Bouteillerie'),
(176, 'Saint-Philippe-de-Néri'),
(177, 'Rivière-Ouelle'),
(178, 'Saint-Pacôme'),
(179, 'Saint-Gabriel-Lalemant'),
(180, 'Saint-Onésime-d\'Ixworth'),
(181, 'La Pocatière'),
(182, 'Sainte-Anne-de-la-Pocatière'),
(183, 'Picard'),
(184, 'Petit-Lac-Sainte-Anne'),
(185, 'Saint-Irénée'),
(186, 'La Malbaie'),
(187, 'Notre-Dame-des-Monts'),
(188, 'Saint-Aimé-des-Lacs'),
(189, 'Clermont'),
(190, 'Saint-Siméon'),
(191, 'Baie-Sainte-Catherine'),
(192, 'Mont-Élie'),
(193, 'Sagard'),
(194, 'Petite-Rivière-Saint-François'),
(195, 'Baie-Saint-Paul'),
(196, 'L\'Isle-aux-Coudres'),
(197, 'Les Éboulements'),
(198, 'Saint-Hilarion'),
(199, 'Saint-Urbain'),
(200, 'Lac-Pikauba'),
(201, 'Saint-Omer'),
(202, 'Saint-Pamphile'),
(203, 'Saint-Adalbert'),
(204, 'Saint-Marcel'),
(205, 'Sainte-Félicité'),
(206, 'Sainte-Perpétue'),
(207, 'Tourville'),
(208, 'Saint-Damase-de-L\'Islet'),
(209, 'Saint-Cyrille-de-Lessard'),
(210, 'Saint-Aubert'),
(211, 'Sainte-Louise'),
(212, 'Saint-Roch-des-Aulnaies'),
(213, 'Saint-Jean-Port-Joli'),
(214, 'L\'Islet'),
(215, 'Saint-Just-de-Bretenières'),
(216, 'Lac-Frontière'),
(217, 'Saint-Fabien-de-Panet'),
(218, 'Sainte-Lucie-de-Beauregard'),
(219, 'Sainte-Apolline-de-Patton'),
(220, 'Saint-Paul-de-Montminy'),
(221, 'Sainte-Euphémie-sur-Rivière-du-Sud'),
(222, 'Notre-Dame-du-Rosaire'),
(223, 'Cap-Saint-Ignace'),
(224, 'Montmagny'),
(225, 'Saint-Pierre-de-la-Rivière-du-Sud'),
(226, 'Saint-François-de-la-Rivière-du-Sud'),
(227, 'Berthier-sur-Mer'),
(228, 'Saint-Antoine-de-l\'Isle-aux-Grues'),
(229, 'Saint-Philémon'),
(230, 'Notre-Dame-Auxiliatrice-de-Buckland'),
(231, 'Saint-Nazaire-de-Dorchester'),
(232, 'Saint-Léon-de-Standon'),
(233, 'Saint-Malachie'),
(234, 'Saint-Damien-de-Buckland'),
(235, 'Armagh'),
(236, 'Saint-Nérée-de-Bellechasse'),
(237, 'Saint-Lazare-de-Bellechasse'),
(238, 'Sainte-Claire'),
(239, 'Saint-Anselme'),
(240, 'Saint-Henri'),
(241, 'Honfleur'),
(242, 'Saint-Gervais'),
(243, 'Saint-Raphaël'),
(244, 'La Durantaye'),
(245, 'Saint-Charles-de-Bellechasse'),
(246, 'Beaumont'),
(247, 'Saint-Michel-de-Bellechasse'),
(248, 'Saint-Vallier'),
(249, 'Saint-François-de-l\'Île-d\'Orléans'),
(250, 'Sainte-Famille-de-l\'Île-d\'Orléans'),
(251, 'Saint-Jean-de-l\'Île-d\'Orléans'),
(252, 'Saint-Laurent-de-l\'Île-d\'Orléans'),
(253, 'Saint-Pierre-de-l\'Île-d\'Orléans'),
(254, 'Sainte-Pétronille'),
(255, 'Saint-Tite-des-Caps'),
(256, 'Saint-Ferréol-les-Neiges'),
(257, 'Saint-Louis-de-Gonzague-du-Cap-Tourmente'),
(258, 'Saint-Joachim'),
(259, 'Beaupré'),
(260, 'Sainte-Anne-de-Beaupré'),
(261, 'Château-Richer'),
(262, 'L\'Ange-Gardien'),
(263, 'Boischatel'),
(264, 'Sault-au-Cochon'),
(265, 'Lac-Jacques-Cartier'),
(266, 'Sainte-Catherine-de-la-Jacques-Cartier'),
(267, 'Fossambault-sur-le-Lac'),
(268, 'Lac-Saint-Joseph'),
(269, 'Shannon'),
(270, 'Saint-Gabriel-de-Valcartier'),
(271, 'Lac-Delage'),
(272, 'Stoneham-et-Tewkesbury'),
(273, 'Lac-Beauport'),
(274, 'Sainte-Brigitte-de-Laval'),
(275, 'Lac-Croche'),
(276, 'Notre-Dame-des-Anges'),
(277, 'Québec'),
(278, 'L\'Ancienne-Lorette'),
(279, 'Saint-Augustin-de-Desmaures'),
(280, 'Wendake'),
(281, 'Lévis'),
(282, 'Frampton'),
(283, 'Saints-Anges'),
(284, 'Vallée-Jonction'),
(285, 'Saint-Elzéar'),
(286, 'Sainte-Marie'),
(287, 'Sainte-Marguerite'),
(288, 'Sainte-Hénédine'),
(289, 'Scott'),
(290, 'Saint-Bernard'),
(291, 'Saint-Isidore'),
(292, 'Saint-Lambert-de-Lauzon'),
(293, 'Saint-Victor'),
(294, 'Saint-Alfred'),
(295, 'Beauceville'),
(296, 'Saint-Odilon-de-Cranbourne'),
(297, 'Saint-Joseph-de-Beauce'),
(298, 'Saint-Joseph-des-Érables'),
(299, 'Saint-Jules'),
(300, 'Tring-Jonction'),
(301, 'Saint-Frédéric'),
(302, 'Saint-Séverin'),
(303, 'Saint-Zacharie'),
(304, 'Sainte-Aurélie'),
(305, 'Saint-Prosper'),
(306, 'Saint-Benjamin'),
(307, 'Sainte-Rose-de-Watford'),
(308, 'Saint-Louis-de-Gonzague'),
(309, 'Saint-Cyprien'),
(310, 'Sainte-Justine'),
(311, 'Lac-Etchemin'),
(312, 'Saint-Luc-de-Bellechasse'),
(313, 'Sainte-Sabine'),
(314, 'Saint-Camille-de-Lellis'),
(315, 'Saint-Magloire'),
(316, 'Saint-Théophile'),
(317, 'Saint-Gédéon-de-Beauce'),
(318, 'Saint-Hilaire-de-Dorset'),
(319, 'Saint-Évariste-de-Forsyth'),
(320, 'La Guadeloupe'),
(321, 'Saint-Honoré-de-Shenley'),
(322, 'Saint-Martin'),
(323, 'Saint-René'),
(324, 'Saint-Côme--Linière'),
(325, 'Saint-Philibert'),
(326, 'Saint-Georges'),
(327, 'Lac-Poulin'),
(328, 'Saint-Benoît-Labre'),
(329, 'Saint-Éphrem-de-Beauce'),
(330, 'Notre-Dame-des-Pins'),
(331, 'Saint-Simon-les-Mines'),
(332, 'Saint-Augustin-de-Woburn'),
(333, 'Notre-Dame-des-Bois'),
(334, 'Val-Racine'),
(335, 'Piopolis'),
(336, 'Frontenac'),
(337, 'Lac-Mégantic'),
(338, 'Marston'),
(339, 'Milan'),
(340, 'Nantes'),
(341, 'Sainte-Cécile-de-Whitton'),
(342, 'Audet'),
(343, 'Saint-Robert-Bellarmin'),
(344, 'Saint-Ludger'),
(345, 'Lac-Drolet'),
(346, 'Saint-Sébastien'),
(347, 'Courcelles'),
(348, 'Lambton'),
(349, 'Saint-Romain'),
(350, 'Stornoway'),
(351, 'Stratford'),
(352, 'Beaulac-Garthby'),
(353, 'Disraeli'),
(354, 'Disraeli'),
(355, 'Saint-Jacques-le-Majeur-de-Wolfestown'),
(356, 'Saint-Fortunat'),
(357, 'Saint-Julien'),
(358, 'Irlande'),
(359, 'Saint-Joseph-de-Coleraine'),
(360, 'Sainte-Praxède'),
(361, 'Adstock'),
(362, 'Sainte-Clotilde-de-Beauce'),
(363, 'Thetford Mines'),
(364, 'Saint-Adrien-d\'Irlande'),
(365, 'Saint-Jean-de-Brébeuf'),
(366, 'Kinnear\'s Mills'),
(367, 'East Broughton'),
(368, 'Sacré-Coeur-de-Jésus'),
(369, 'Saint-Pierre-de-Broughton'),
(370, 'Saint-Jacques-de-Leeds'),
(371, 'Saint-Ferdinand'),
(372, 'Sainte-Sophie-d\'Halifax'),
(373, 'Princeville'),
(374, 'Plessisville'),
(375, 'Plessisville'),
(376, 'Saint-Pierre-Baptiste'),
(377, 'Inverness'),
(378, 'Lyster'),
(379, 'Laurierville'),
(380, 'Notre-Dame-de-Lourdes'),
(381, 'Villeroy'),
(382, 'Saint-Sylvestre'),
(383, 'Sainte-Agathe-de-Lotbinière'),
(384, 'Saint-Patrice-de-Beaurivage'),
(385, 'Saint-Narcisse-de-Beaurivage'),
(386, 'Saint-Gilles'),
(387, 'Dosquet'),
(388, 'Saint-Agapit'),
(389, 'Saint-Flavien'),
(390, 'Laurier-Station'),
(391, 'Saint-Janvier-de-Joly'),
(392, 'Val-Alain'),
(393, 'Saint-Édouard-de-Lotbinière'),
(394, 'Notre-Dame-du-Sacré-Coeur-d\'Issoudun'),
(395, 'Saint-Apollinaire'),
(396, 'Saint-Antoine-de-Tilly'),
(397, 'Sainte-Croix'),
(398, 'Lotbinière'),
(399, 'Leclercville'),
(400, 'Neuville'),
(401, 'Pont-Rouge'),
(402, 'Donnacona'),
(403, 'Cap-Santé'),
(404, 'Saint-Basile'),
(405, 'Portneuf'),
(406, 'Deschambault-Grondines'),
(407, 'Saint-Gilbert'),
(408, 'Saint-Marc-des-Carrières'),
(409, 'Saint-Casimir'),
(410, 'Saint-Thuribe'),
(411, 'Saint-Ubalde'),
(412, 'Saint-Alban'),
(413, 'Sainte-Christine-d\'Auvergne'),
(414, 'Saint-Léonard-de-Portneuf'),
(415, 'Lac-Sergent'),
(416, 'Saint-Raymond'),
(417, 'Rivière-à-Pierre'),
(418, 'Lac-Blanc'),
(419, 'Linton'),
(420, 'Lac-Lapeyrère'),
(421, 'Notre-Dame-de-Montauban'),
(422, 'Lac-aux-Sables'),
(423, 'Saint-Adelphe'),
(424, 'Saint-Séverin'),
(425, 'Saint-Tite'),
(426, 'Hérouxville'),
(427, 'Grandes-Piles'),
(428, 'Saint-Roch-de-Mékinac'),
(429, 'Sainte-Thècle'),
(430, 'Trois-Rives'),
(431, 'Lac-Masketsi'),
(432, 'Lac-Normand'),
(433, 'Rivière-de-la-Savane'),
(434, 'Lac-Boulé'),
(435, 'Shawinigan'),
(436, 'Trois-Rivières'),
(437, 'Sainte-Anne-de-la-Pérade'),
(438, 'Batiscan'),
(439, 'Sainte-Geneviève-de-Batiscan'),
(440, 'Champlain'),
(441, 'Saint-Luc-de-Vincennes'),
(442, 'Saint-Maurice'),
(443, 'Notre-Dame-du-Mont-Carmel'),
(444, 'Saint-Narcisse'),
(445, 'Saint-Stanislas'),
(446, 'Saint-Prosper-de-Champlain'),
(447, 'Saint-Sylvère'),
(448, 'Bécancour'),
(449, 'Sainte-Marie-de-Blandford'),
(450, 'Lemieux'),
(451, 'Manseau'),
(452, 'Sainte-Françoise'),
(453, 'Sainte-Sophie-de-Lévrard'),
(454, 'Fortierville'),
(455, 'Parisville'),
(456, 'Sainte-Cécile-de-Lévrard'),
(457, 'Saint-Pierre-les-Becquets'),
(458, 'Deschaillons-sur-Saint-Laurent'),
(459, 'Wôlinak'),
(460, 'Saints-Martyrs-Canadiens'),
(461, 'Ham-Nord'),
(462, 'Notre-Dame-de-Ham'),
(463, 'Saint-Rémi-de-Tingwick'),
(464, 'Tingwick'),
(465, 'Chesterville'),
(466, 'Sainte-Hélène-de-Chester'),
(467, 'Saint-Norbert-d\'Arthabaska'),
(468, 'Saint-Christophe-d\'Arthabaska'),
(469, 'Victoriaville'),
(470, 'Warwick'),
(471, 'Saint-Albert'),
(472, 'Sainte-Élizabeth-de-Warwick'),
(473, 'Kingsey Falls'),
(474, 'Sainte-Séraphine'),
(475, 'Sainte-Clotilde-de-Horton'),
(476, 'Saint-Samuel'),
(477, 'Saint-Valère'),
(478, 'Saint-Rosaire'),
(479, 'Daveluyville'),
(480, 'Maddington Falls'),
(481, 'Saint-Louis-de-Blandford'),
(482, 'Ham-Sud'),
(483, 'Saint-Adrien'),
(484, 'Wotton'),
(485, 'Saint-Camille'),
(486, 'Saint-Georges-de-Windsor'),
(487, 'Val-des-Sources'),
(488, 'Danville'),
(489, 'Saint-Isidore-de-Clifton'),
(490, 'Chartierville'),
(491, 'La Patrie'),
(492, 'Newport'),
(493, 'Cookshire-Eaton'),
(494, 'Ascot Corner'),
(495, 'East Angus'),
(496, 'Westbury'),
(497, 'Bury'),
(498, 'Hampden'),
(499, 'Scotstown'),
(500, 'Lingwick'),
(501, 'Weedon'),
(502, 'Dudswell'),
(503, 'Stoke'),
(504, 'Saint-François-Xavier-de-Brompton'),
(505, 'Saint-Denis-de-Brompton'),
(506, 'Racine'),
(507, 'Bonsecours'),
(508, 'Lawrenceville'),
(509, 'Sainte-Anne-de-la-Rochelle'),
(510, 'Valcourt'),
(511, 'Valcourt'),
(512, 'Maricourt'),
(513, 'Kingsbury'),
(514, 'Melbourne'),
(515, 'Ulverton'),
(516, 'Windsor'),
(517, 'Val-Joli'),
(518, 'Richmond'),
(519, 'Saint-Claude'),
(520, 'Cleveland'),
(521, 'Sherbrooke'),
(522, 'Saint-Malo'),
(523, 'Saint-Venant-de-Paquette'),
(524, 'East Hereford'),
(525, 'Saint-Herménégilde'),
(526, 'Dixville'),
(527, 'Coaticook'),
(528, 'Barnston-Ouest'),
(529, 'Stanstead-Est'),
(530, 'Sainte-Edwidge-de-Clifton'),
(531, 'Martinville'),
(532, 'Compton'),
(533, 'Waterville'),
(534, 'Stanstead'),
(535, 'Ogden'),
(536, 'Stanstead'),
(537, 'Potton'),
(538, 'Ayer\'s Cliff'),
(539, 'Hatley'),
(540, 'North Hatley'),
(541, 'Hatley'),
(542, 'Sainte-Catherine-de-Hatley'),
(543, 'Magog'),
(544, 'Saint-Benoît-du-Lac'),
(545, 'Austin'),
(546, 'Eastman'),
(547, 'Bolton-Est'),
(548, 'Saint-Étienne-de-Bolton'),
(549, 'Stukely-Sud'),
(550, 'Orford'),
(551, 'Abercorn'),
(552, 'Frelighsburg'),
(553, 'Saint-Armand'),
(554, 'Pike River'),
(555, 'Stanbridge Station'),
(556, 'Bedford'),
(557, 'Bedford'),
(558, 'Stanbridge East'),
(559, 'Dunham'),
(560, 'Sutton'),
(561, 'Bolton-Ouest'),
(562, 'Brome'),
(563, 'Lac-Brome'),
(564, 'Bromont'),
(565, 'Cowansville'),
(566, 'East Farnham'),
(567, 'Brigham'),
(568, 'Saint-Ignace-de-Stanbridge'),
(569, 'Notre-Dame-de-Stanbridge'),
(570, 'Sainte-Sabine'),
(571, 'Farnham'),
(572, 'Saint-Alphonse-de-Granby'),
(573, 'Granby'),
(574, 'Waterloo'),
(575, 'Warden'),
(576, 'Shefford'),
(577, 'Saint-Joachim-de-Shefford'),
(578, 'Roxton Pond'),
(579, 'Sainte-Cécile-de-Milton'),
(580, 'Béthanie'),
(581, 'Roxton Falls'),
(582, 'Roxton'),
(583, 'Sainte-Christine'),
(584, 'Acton Vale'),
(585, 'Upton'),
(586, 'Saint-Théodore-d\'Acton'),
(587, 'Saint-Nazaire-d\'Acton'),
(588, 'Saint-Félix-de-Kingsey'),
(589, 'Durham-Sud'),
(590, 'Lefebvre'),
(591, 'L\'Avenir'),
(592, 'Saint-Lucien'),
(593, 'Wickham'),
(594, 'Saint-Germain-de-Grantham'),
(595, 'Drummondville'),
(596, 'Saint-Cyrille-de-Wendover'),
(597, 'Notre-Dame-du-Bon-Conseil'),
(598, 'Notre-Dame-du-Bon-Conseil'),
(599, 'Sainte-Brigitte-des-Saults'),
(600, 'Saint-Majorique-de-Grantham'),
(601, 'Saint-Edmond-de-Grantham'),
(602, 'Saint-Eugène'),
(603, 'Saint-Guillaume'),
(604, 'Saint-Bonaventure'),
(605, 'Saint-Pie-de-Guire'),
(606, 'Sainte-Eulalie'),
(607, 'Aston-Jonction'),
(608, 'Saint-Wenceslas'),
(609, 'Saint-Célestin'),
(610, 'Saint-Célestin'),
(611, 'Saint-Léonard-d\'Aston'),
(612, 'Sainte-Perpétue'),
(613, 'Sainte-Monique'),
(614, 'Grand-Saint-Esprit'),
(615, 'Nicolet'),
(616, 'La Visitation-de-Yamaska'),
(617, 'Saint-Zéphirin-de-Courval'),
(618, 'Saint-Elphège'),
(619, 'Baie-du-Febvre'),
(620, 'Pierreville'),
(621, 'Saint-François-du-Lac'),
(622, 'Odanak'),
(623, 'Maskinongé'),
(624, 'Louiseville'),
(625, 'Yamachiche'),
(626, 'Saint-Barnabé'),
(627, 'Saint-Sévère'),
(628, 'Saint-Léon-le-Grand'),
(629, 'Sainte-Ursule'),
(630, 'Saint-Justin'),
(631, 'Saint-Édouard-de-Maskinongé'),
(632, 'Sainte-Angèle-de-Prémont'),
(633, 'Saint-Paulin'),
(634, 'Saint-Alexis-des-Monts'),
(635, 'Saint-Mathieu-du-Parc'),
(636, 'Saint-Élie-de-Caxton'),
(637, 'Charette'),
(638, 'Saint-Boniface'),
(639, 'Saint-Étienne-des-Grès'),
(640, 'Lavaltrie'),
(641, 'Lanoraie'),
(642, 'Sainte-Élisabeth'),
(643, 'Berthierville'),
(644, 'Sainte-Geneviève-de-Berthier'),
(645, 'Saint-Ignace-de-Loyola'),
(646, 'La Visitation-de-l\'Île-Dupas'),
(647, 'Saint-Barthélemy'),
(648, 'Saint-Cuthbert'),
(649, 'Saint-Norbert'),
(650, 'Saint-Cléophas-de-Brandon'),
(651, 'Saint-Gabriel'),
(652, 'Saint-Gabriel-de-Brandon'),
(653, 'Saint-Didace'),
(654, 'Mandeville'),
(655, 'Saint-David'),
(656, 'Massueville'),
(657, 'Saint-Aimé'),
(658, 'Saint-Robert'),
(659, 'Sainte-Victoire-de-Sorel'),
(660, 'Saint-Ours'),
(661, 'Saint-Roch-de-Richelieu'),
(662, 'Saint-Joseph-de-Sorel'),
(663, 'Sorel-Tracy'),
(664, 'Sainte-Anne-de-Sorel'),
(665, 'Yamaska'),
(666, 'Saint-Gérard-Majella'),
(667, 'Saint-Pie'),
(668, 'Saint-Damase'),
(669, 'Sainte-Madeleine'),
(670, 'Sainte-Marie-Madeleine'),
(671, 'La Présentation'),
(672, 'Saint-Hyacinthe'),
(673, 'Saint-Dominique'),
(674, 'Saint-Valérien-de-Milton'),
(675, 'Saint-Liboire'),
(676, 'Saint-Simon'),
(677, 'Sainte-Hélène-de-Bagot'),
(678, 'Saint-Hugues'),
(679, 'Saint-Barnabé-Sud'),
(680, 'Saint-Jude'),
(681, 'Saint-Bernard-de-Michaudville'),
(682, 'Saint-Louis'),
(683, 'Saint-Marcel-de-Richelieu'),
(684, 'Ange-Gardien'),
(685, 'Saint-Paul-d\'Abbotsford'),
(686, 'Saint-Césaire'),
(687, 'Sainte-Angèle-de-Monnoir'),
(688, 'Rougemont'),
(689, 'Marieville'),
(690, 'Richelieu'),
(691, 'Saint-Mathias-sur-Richelieu'),
(692, 'Venise-en-Québec'),
(693, 'Clarenceville'),
(694, 'Noyan'),
(695, 'Lacolle'),
(696, 'Saint-Valentin'),
(697, 'Saint-Paul-de-l\'Île-aux-Noix'),
(698, 'Henryville'),
(699, 'Saint-Sébastien'),
(700, 'Saint-Alexandre'),
(701, 'Sainte-Anne-de-Sabrevois'),
(702, 'Saint-Blaise-sur-Richelieu'),
(703, 'Saint-Jean-sur-Richelieu'),
(704, 'Mont-Saint-Grégoire'),
(705, 'Sainte-Brigide-d\'Iberville'),
(706, 'Chambly'),
(707, 'Carignan'),
(708, 'Saint-Basile-le-Grand'),
(709, 'McMasterville'),
(710, 'Otterburn Park'),
(711, 'Saint-Jean-Baptiste'),
(712, 'Mont-Saint-Hilaire'),
(713, 'Beloeil'),
(714, 'Saint-Mathieu-de-Beloeil'),
(715, 'Saint-Marc-sur-Richelieu'),
(716, 'Saint-Charles-sur-Richelieu'),
(717, 'Saint-Denis-sur-Richelieu'),
(718, 'Saint-Antoine-sur-Richelieu'),
(719, 'Brossard'),
(720, 'Saint-Lambert'),
(721, 'Boucherville'),
(722, 'Saint-Bruno-de-Montarville'),
(723, 'Longueuil'),
(724, 'Sainte-Julie'),
(725, 'Saint-Amable'),
(726, 'Varennes'),
(727, 'Verchères'),
(728, 'Calixa-Lavallée'),
(729, 'Contrecoeur'),
(730, 'Charlemagne'),
(731, 'Repentigny'),
(732, 'Saint-Sulpice'),
(733, 'L\'Assomption'),
(734, 'L\'Épiphanie'),
(735, 'Saint-Paul'),
(736, 'Crabtree'),
(737, 'Saint-Pierre'),
(738, 'Joliette'),
(739, 'Saint-Thomas'),
(740, 'Notre-Dame-des-Prairies'),
(741, 'Saint-Charles-Borromée'),
(742, 'Saint-Ambroise-de-Kildare'),
(743, 'Notre-Dame-de-Lourdes'),
(744, 'Sainte-Mélanie'),
(745, 'Saint-Félix-de-Valois'),
(746, 'Saint-Jean-de-Matha'),
(747, 'Sainte-Béatrix'),
(748, 'Saint-Alphonse-Rodriguez'),
(749, 'Sainte-Marcelline-de-Kildare'),
(750, 'Rawdon'),
(751, 'Chertsey'),
(752, 'Entrelacs'),
(753, 'Notre-Dame-de-la-Merci'),
(754, 'Saint-Donat'),
(755, 'Saint-Côme'),
(756, 'Sainte-Émélie-de-l\'Énergie'),
(757, 'Saint-Damien'),
(758, 'Saint-Zénon'),
(759, 'Saint-Michel-des-Saints'),
(760, 'Manawan'),
(761, 'Lac-Minaki'),
(762, 'Lac-Devenyns'),
(763, 'Baie-de-la-Bouteille'),
(764, 'Lac-Matawin'),
(765, 'Lac-Legendre'),
(766, 'Saint-Guillaume-Nord'),
(767, 'Lac-des-Dix-Milles'),
(768, 'Lac-Santé'),
(769, 'Baie-Obaoca'),
(770, 'Lac-Cabasta'),
(771, 'Baie-Atibenne'),
(772, 'Lac-du-Taureau'),
(773, 'Sainte-Marie-Salomé'),
(774, 'Saint-Jacques'),
(775, 'Saint-Alexis'),
(776, 'Saint-Esprit'),
(777, 'Saint-Roch-de-l\'Achigan'),
(778, 'Saint-Roch-Ouest'),
(779, 'Saint-Lin--Laurentides'),
(780, 'Saint-Calixte'),
(781, 'Sainte-Julienne'),
(782, 'Saint-Liguori'),
(783, 'Terrebonne'),
(784, 'Mascouche'),
(785, 'Laval'),
(786, 'Montréal-Est'),
(787, 'Montréal'),
(788, 'Westmount'),
(789, 'Montréal-Ouest'),
(790, 'Côte-Saint-Luc'),
(791, 'Hampstead'),
(792, 'Mont-Royal'),
(793, 'Dorval'),
(794, 'L\'Île-Dorval'),
(795, 'Pointe-Claire'),
(796, 'Kirkland'),
(797, 'Beaconsfield'),
(798, 'Baie-D\'Urfé'),
(799, 'Sainte-Anne-de-Bellevue'),
(800, 'Senneville'),
(801, 'Dollard-des-Ormeaux'),
(802, 'Saint-Mathieu'),
(803, 'Saint-Philippe'),
(804, 'La Prairie'),
(805, 'Candiac'),
(806, 'Delson'),
(807, 'Sainte-Catherine'),
(808, 'Saint-Constant'),
(809, 'Saint-Isidore'),
(810, 'Mercier'),
(811, 'Châteauguay'),
(812, 'Léry'),
(813, 'Kahnawake'),
(814, 'Saint-Bernard-de-Lacolle'),
(815, 'Hemmingford'),
(816, 'Hemmingford'),
(817, 'Sainte-Clotilde'),
(818, 'Saint-Patrice-de-Sherrington'),
(819, 'Napierville'),
(820, 'Saint-Cyprien-de-Napierville'),
(821, 'Saint-Jacques-le-Mineur'),
(822, 'Saint-Édouard'),
(823, 'Saint-Michel'),
(824, 'Saint-Rémi'),
(825, 'Havelock'),
(826, 'Franklin'),
(827, 'Saint-Chrysostome'),
(828, 'Howick'),
(829, 'Très-Saint-Sacrement'),
(830, 'Ormstown'),
(831, 'Hinchinbrooke'),
(832, 'Elgin'),
(833, 'Huntingdon'),
(834, 'Godmanchester'),
(835, 'Sainte-Barbe'),
(836, 'Saint-Anicet'),
(837, 'Dundee'),
(838, 'Akwesasne'),
(839, 'Saint-Urbain-Premier'),
(840, 'Sainte-Martine'),
(841, 'Beauharnois'),
(842, 'Saint-Étienne-de-Beauharnois'),
(843, 'Saint-Louis-de-Gonzague'),
(844, 'Saint-Stanislas-de-Kostka'),
(845, 'Salaberry-de-Valleyfield'),
(846, 'Rivière-Beaudette'),
(847, 'Saint-Télesphore'),
(848, 'Saint-Polycarpe'),
(849, 'Saint-Zotique'),
(850, 'Les Coteaux'),
(851, 'Coteau-du-Lac'),
(852, 'Saint-Clet'),
(853, 'Les Cèdres'),
(854, 'Pointe-des-Cascades'),
(855, 'L\'Île-Perrot'),
(856, 'Notre-Dame-de-l\'Île-Perrot'),
(857, 'Pincourt'),
(858, 'Terrasse-Vaudreuil'),
(859, 'Vaudreuil-Dorion'),
(860, 'Vaudreuil-sur-le-Lac'),
(861, 'L\'Île-Cadieux'),
(862, 'Hudson'),
(863, 'Saint-Lazare'),
(864, 'Sainte-Marthe'),
(865, 'Sainte-Justine-de-Newton'),
(866, 'Très-Saint-Rédempteur'),
(867, 'Rigaud'),
(868, 'Pointe-Fortune'),
(869, 'Saint-Eustache'),
(870, 'Deux-Montagnes'),
(871, 'Sainte-Marthe-sur-le-Lac'),
(872, 'Pointe-Calumet'),
(873, 'Saint-Joseph-du-Lac'),
(874, 'Oka'),
(875, 'Saint-Placide'),
(876, 'Kanesatake'),
(877, 'Boisbriand'),
(878, 'Sainte-Thérèse'),
(879, 'Blainville'),
(880, 'Rosemère'),
(881, 'Lorraine'),
(882, 'Bois-des-Filion'),
(883, 'Sainte-Anne-des-Plaines'),
(884, 'Mirabel'),
(885, 'Saint-Colomban'),
(886, 'Saint-Jérôme'),
(887, 'Sainte-Sophie'),
(888, 'Prévost'),
(889, 'Saint-Hippolyte'),
(890, 'Saint-André-d\'Argenteuil'),
(891, 'Lachute'),
(892, 'Gore'),
(893, 'Mille-Isles'),
(894, 'Wentworth'),
(895, 'Brownsburg-Chatham'),
(896, 'Grenville-sur-la-Rouge'),
(897, 'Grenville'),
(898, 'Harrington'),
(899, 'Estérel'),
(900, 'Sainte-Marguerite-du-Lac-Masson'),
(901, 'Sainte-Adèle'),
(902, 'Piedmont'),
(903, 'Sainte-Anne-des-Lacs'),
(904, 'Saint-Sauveur'),
(905, 'Morin-Heights'),
(906, 'Lac-des-Seize-Îles'),
(907, 'Wentworth-Nord'),
(908, 'Saint-Adolphe-d\'Howard'),
(909, 'Val-Morin'),
(910, 'Val-David'),
(911, 'Lantier'),
(912, 'Sainte-Lucie-des-Laurentides'),
(913, 'Sainte-Agathe-des-Monts'),
(914, 'Ivry-sur-le-Lac'),
(915, 'Mont-Blanc'),
(916, 'Barkmere'),
(917, 'Montcalm'),
(918, 'Arundel'),
(919, 'Huberdeau'),
(920, 'Amherst'),
(921, 'Brébeuf'),
(922, 'Lac-Supérieur'),
(923, 'Val-des-Lacs'),
(924, 'Mont-Tremblant'),
(925, 'La Conception'),
(926, 'Labelle'),
(927, 'Lac-Tremblant-Nord'),
(928, 'La Minerve'),
(929, 'Doncaster'),
(930, 'Notre-Dame-du-Laus'),
(931, 'Notre-Dame-de-Pontmain'),
(932, 'Lac-du-Cerf'),
(933, 'Saint-Aimé-du-Lac-des-Îles'),
(934, 'Kiamika'),
(935, 'Nominingue'),
(936, 'Rivière-Rouge'),
(937, 'La Macaza'),
(938, 'L\'Ascension'),
(939, 'Lac-Saguay'),
(940, 'Chute-Saint-Philippe'),
(941, 'Lac-des-Écorces'),
(942, 'Mont-Laurier'),
(943, 'Ferme-Neuve'),
(944, 'Lac-Saint-Paul'),
(945, 'Mont-Saint-Michel'),
(946, 'Sainte-Anne-du-Lac'),
(947, 'Lac-de-la-Pomme'),
(948, 'Lac-Akonapwehikan'),
(949, 'Lac-Wagwabika'),
(950, 'Lac-Bazinet'),
(951, 'Lac-De La Bidière'),
(952, 'Lac-Oscar'),
(953, 'Lac-de-la-Maison-de-Pierre'),
(954, 'Baie-des-Chaloupes'),
(955, 'Lac-Douaire'),
(956, 'Lac-Ernest'),
(957, 'Lac-Marguerite'),
(958, 'TNO aquatique de la MRC d\'Antoine-Labell'),
(959, 'Fassett'),
(960, 'Montebello'),
(961, 'Notre-Dame-de-Bonsecours'),
(962, 'Notre-Dame-de-la-Paix'),
(963, 'Saint-André-Avellin'),
(964, 'Papineauville'),
(965, 'Plaisance'),
(966, 'Thurso'),
(967, 'Lochaber'),
(968, 'Lochaber-Partie-Ouest'),
(969, 'Mayo'),
(970, 'Saint-Sixte'),
(971, 'Ripon'),
(972, 'Mulgrave-et-Derry'),
(973, 'Notre-Dame-de-la-Salette'),
(974, 'Montpellier'),
(975, 'Lac-Simon'),
(976, 'Chénéville'),
(977, 'Namur'),
(978, 'Boileau'),
(979, 'Saint-Émile-de-Suffolk'),
(980, 'Lac-des-Plages'),
(981, 'Duhamel'),
(982, 'Val-des-Bois'),
(983, 'Bowman'),
(984, 'Gatineau'),
(985, 'L\'Ange-Gardien'),
(986, 'Val-des-Monts'),
(987, 'Cantley'),
(988, 'Chelsea'),
(989, 'Pontiac'),
(990, 'La Pêche'),
(991, 'Denholm'),
(992, 'Low'),
(993, 'Kazabazua'),
(994, 'Lac-Sainte-Marie'),
(995, 'Gracefield'),
(996, 'Cayamant'),
(997, 'Blue Sea'),
(998, 'Bouchette'),
(999, 'Sainte-Thérèse-de-la-Gatineau'),
(1000, 'Messines'),
(1001, 'Maniwaki'),
(1002, 'Déléage'),
(1003, 'Egan-Sud'),
(1004, 'Bois-Franc'),
(1005, 'Montcerf-Lytton'),
(1006, 'Aumond'),
(1007, 'Grand-Remous'),
(1008, 'Kitigan Zibi'),
(1009, 'Lac-Rapide'),
(1010, 'Lac-Pythonga'),
(1011, 'Cascades-Malignes'),
(1012, 'Lac-Lenôtre'),
(1013, 'Lac-Moselle'),
(1014, 'Dépôt-Échouani'),
(1015, 'Bristol'),
(1016, 'Shawville'),
(1017, 'Clarendon'),
(1018, 'Portage-du-Fort'),
(1019, 'Bryson'),
(1020, 'Campbell\'s Bay'),
(1021, 'L\'Île-du-Grand-Calumet'),
(1022, 'Litchfield'),
(1023, 'Thorne'),
(1024, 'Alleyn-et-Cawood'),
(1025, 'Otter Lake'),
(1026, 'Fort-Coulonge'),
(1027, 'Mansfield-et-Pontefract'),
(1028, 'Waltham'),
(1029, 'L\'Isle-aux-Allumettes'),
(1030, 'Chichester'),
(1031, 'Sheenboro'),
(1032, 'Rapides-des-Joachims'),
(1033, 'Lac-Nilgaut'),
(1034, 'Témiscaming'),
(1035, 'Kipawa'),
(1036, 'Saint-Édouard-de-Fabre'),
(1037, 'Béarn'),
(1038, 'Ville-Marie'),
(1039, 'Duhamel-Ouest'),
(1040, 'Lorrainville'),
(1041, 'Saint-Bruno-de-Guigues'),
(1042, 'Laverlochère-Angliers'),
(1043, 'Fugèreville'),
(1044, 'Latulipe-et-Gaboury'),
(1045, 'Belleterre'),
(1046, 'Laforce'),
(1047, 'Moffet'),
(1048, 'Saint-Eugène-de-Guigues'),
(1049, 'Notre-Dame-du-Nord'),
(1050, 'Guérin'),
(1051, 'Nédélec'),
(1052, 'Rémigny'),
(1053, 'Kebaowek'),
(1054, 'Hunter\'s Point'),
(1055, 'Winneway'),
(1056, 'Timiskaming'),
(1057, 'Laniel'),
(1058, 'Les Lacs-du-Témiscamingue'),
(1059, 'Rouyn-Noranda'),
(1060, 'Duparquet'),
(1061, 'Rapide-Danseur'),
(1062, 'Roquemaure'),
(1063, 'Gallichan'),
(1064, 'Palmarolle'),
(1065, 'Sainte-Germaine-Boulé'),
(1066, 'Poularies'),
(1067, 'Taschereau'),
(1068, 'Authier'),
(1069, 'Macamic'),
(1070, 'Sainte-Hélène-de-Mancebourg'),
(1071, 'Clerval'),
(1072, 'La Reine'),
(1073, 'Dupuy'),
(1074, 'La Sarre'),
(1075, 'Chazel'),
(1076, 'Authier-Nord'),
(1077, 'Val-Saint-Gilles'),
(1078, 'Clermont'),
(1079, 'Normétal'),
(1080, 'Saint-Lambert'),
(1081, 'Lac-Duparquet'),
(1082, 'Rivière-Ojima'),
(1083, 'Champneuf'),
(1084, 'La Morandière-Rochebaucourt'),
(1085, 'Barraute'),
(1086, 'La Corne'),
(1087, 'Landrienne'),
(1088, 'Saint-Marc-de-Figuery'),
(1089, 'La Motte'),
(1090, 'Saint-Mathieu-d\'Harricana'),
(1091, 'Amos'),
(1092, 'Saint-Félix-de-Dalquier'),
(1093, 'Saint-Dominique-du-Rosaire'),
(1094, 'Berry'),
(1095, 'Trécesson'),
(1096, 'Launay'),
(1097, 'Sainte-Gertrude-Manneville'),
(1098, 'Preissac'),
(1099, 'Pikogan'),
(1100, 'Lac-Despinassy'),
(1101, 'Lac-Chicobi'),
(1102, 'Val-d\'Or'),
(1103, 'Rivière-Héva'),
(1104, 'Malartic'),
(1105, 'Senneterre'),
(1106, 'Senneterre'),
(1107, 'Belcourt'),
(1108, 'Kitcisakik'),
(1109, 'Lac-Simon'),
(1110, 'Matchi-Manitou'),
(1111, 'Lac-Metei'),
(1112, 'Réservoir-Dozois'),
(1113, 'Lac-Granet'),
(1114, 'La Tuque'),
(1115, 'La Bostonnais'),
(1116, 'Lac-Édouard'),
(1117, 'Coucoucache'),
(1118, 'Wemotaci'),
(1119, 'Obedjiwan'),
(1120, 'Lac-Bouchette'),
(1121, 'Saint-André-du-Lac-Saint-Jean'),
(1122, 'Saint-François-de-Sales'),
(1123, 'Chambord'),
(1124, 'Roberval'),
(1125, 'Sainte-Hedwidge'),
(1126, 'Saint-Prime'),
(1127, 'Saint-Félicien'),
(1128, 'La Doré'),
(1129, 'Mashteuiatsh'),
(1130, 'Lac-Ashuapmushuan'),
(1131, 'Saint-Augustin'),
(1132, 'Péribonka'),
(1133, 'Sainte-Jeanne-d\'Arc'),
(1134, 'Dolbeau-Mistassini'),
(1135, 'Albanel'),
(1136, 'Normandin'),
(1137, 'Saint-Thomas-Didyme'),
(1138, 'Saint-Edmond-les-Plaines'),
(1139, 'Girardville'),
(1140, 'Notre-Dame-de-Lorette'),
(1141, 'Saint-Eugène-d\'Argentenay'),
(1142, 'Saint-Stanislas'),
(1143, 'Passes-Dangereuses'),
(1144, 'Rivière-Mistassini'),
(1145, 'Desbiens'),
(1146, 'Métabetchouan--Lac-à-la-Croix'),
(1147, 'Hébertville'),
(1148, 'Hébertville-Station'),
(1149, 'Saint-Bruno'),
(1150, 'Saint-Gédéon'),
(1151, 'Alma'),
(1152, 'Saint-Nazaire'),
(1153, 'Labrecque'),
(1154, 'Lamarche'),
(1155, 'L\'Ascension-de-Notre-Seigneur'),
(1156, 'Saint-Henri-de-Taillon'),
(1157, 'Sainte-Monique'),
(1158, 'Saint-Ludger-de-Milot'),
(1159, 'Mont-Apica'),
(1160, 'Lac-Moncouche'),
(1161, 'Lac-Achouakan'),
(1162, 'Belle-Rivière'),
(1163, 'Saguenay'),
(1164, 'Petit-Saguenay'),
(1165, 'L\'Anse-Saint-Jean'),
(1166, 'Rivière-Éternité'),
(1167, 'Ferland-et-Boilleau'),
(1168, 'Saint-Félix-d\'Otis'),
(1169, 'Sainte-Rose-du-Nord'),
(1170, 'Saint-Fulgence'),
(1171, 'Saint-Honoré'),
(1172, 'Saint-David-de-Falardeau'),
(1173, 'Bégin'),
(1174, 'Saint-Ambroise'),
(1175, 'Saint-Charles-de-Bourget'),
(1176, 'Larouche'),
(1177, 'Lalemant'),
(1178, 'Lac-Ministuk'),
(1179, 'Mont-Valin'),
(1180, 'Tadoussac'),
(1181, 'Sacré-Coeur'),
(1182, 'Les Bergeronnes'),
(1183, 'Les Escoumins'),
(1184, 'Longue-Rive'),
(1185, 'Portneuf-sur-Mer'),
(1186, 'Forestville'),
(1187, 'Colombier'),
(1188, 'Essipit'),
(1189, 'Lac-au-Brochet'),
(1190, 'Baie-Trinité'),
(1191, 'Godbout'),
(1192, 'Franquelin'),
(1193, 'Baie-Comeau'),
(1194, 'Pointe-Lebel'),
(1195, 'Pointe-aux-Outardes'),
(1196, 'Chute-aux-Outardes'),
(1197, 'Ragueneau'),
(1198, 'Pessamit'),
(1199, 'Rivière-aux-Outardes'),
(1200, 'Sept-Îles'),
(1201, 'Port-Cartier'),
(1202, 'Fermont'),
(1203, 'Schefferville'),
(1204, 'Uashat'),
(1205, 'Maliotenam'),
(1206, 'Kawawachikamach'),
(1207, 'Matimekosh'),
(1208, 'Lac-John'),
(1209, 'Rivière-Nipissis'),
(1210, 'Lac-Walker'),
(1211, 'Rivière-Mouchalagane'),
(1212, 'Caniapiscau'),
(1213, 'Lac-Juillet'),
(1214, 'Lac-Vacher'),
(1215, 'Blanc-Sablon'),
(1216, 'Bonne-Espérance'),
(1217, 'Saint-Augustin'),
(1218, 'Gros-Mécatina'),
(1219, 'Côte-Nord-du-Golfe-du-Saint-Laurent'),
(1220, 'L\'Île-d\'Anticosti'),
(1221, 'Natashquan'),
(1222, 'Aguanish'),
(1223, 'Baie-Johan-Beetz'),
(1224, 'Havre-Saint-Pierre'),
(1225, 'Longue-Pointe-de-Mingan'),
(1226, 'Rivière-Saint-Jean'),
(1227, 'Rivière-au-Tonnerre'),
(1228, 'Pakuashipi'),
(1229, 'La Romaine'),
(1230, 'Nutashkuan'),
(1231, 'Mingan'),
(1232, 'Lac-Jérôme'),
(1233, 'Petit-Mécatina'),
(1234, 'Lebel-sur-Quévillon'),
(1235, 'Waswanipi'),
(1236, 'Matagami'),
(1237, 'Chapais'),
(1238, 'Chibougamau'),
(1239, 'Mistissini'),
(1240, 'Waskaganish'),
(1241, 'Nemaska'),
(1242, 'Eastmain'),
(1243, 'Wemindji'),
(1244, 'Chisasibi'),
(1245, 'Gouvernement régional d\'Eeyou Istchee Ba'),
(1246, 'Kawawachikamach'),
(1247, 'Whapmagoostui'),
(1248, 'Kuujjuarapik'),
(1249, 'Umiujaq'),
(1250, 'Inukjuak'),
(1251, 'Kangiqsualujjuaq'),
(1252, 'Kuujjuaq'),
(1253, 'Tasiujaq'),
(1254, 'Aupaluk'),
(1255, 'Kangirsuk'),
(1256, 'Quaqtaq'),
(1257, 'Puvirnituq'),
(1258, 'Akulivik'),
(1259, 'Kangiqsujuaq'),
(1260, 'Salluit'),
(1261, 'Ivujivik'),
(1262, 'Waswanipi'),
(1263, 'Mistissini'),
(1264, 'Waskaganish'),
(1265, 'Nemaska'),
(1266, 'Eastmain'),
(1267, 'Wemindji'),
(1268, 'Chisasibi'),
(1269, 'Whapmagoostui'),
(1270, 'Oujé-Bougoumou'),
(1271, 'Kuujjuarapik'),
(1272, 'Umiujaq'),
(1273, 'Inukjuak'),
(1274, 'Akulivik'),
(1275, 'Ivujivik'),
(1276, 'Salluit'),
(1277, 'Kangiqsujuaq'),
(1278, 'Quaqtaq'),
(1279, 'Kangirsuk'),
(1280, 'Aupaluk'),
(1281, 'Tasiujaq'),
(1282, 'Kuujjuaq'),
(1283, 'Kangiqsualujjuaq'),
(1284, 'Rivière-Koksoak'),
(1285, 'Baie-d\'Hudson');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `restaurants_commentaire`
--
ALTER TABLE `restaurants_commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Restaurants_commenta_restaurant_id_7b444166_fk_Restauran` (`restaurant_id`),
  ADD KEY `Restaurants_commentaire_userName_id_37dfd804_fk_auth_user_id` (`userName_id`);

--
-- Index pour la table `restaurants_restaurant`
--
ALTER TABLE `restaurants_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Restaurants_restaurant_type_id_302279d9_fk_Restaurants_type_id` (`type_id`),
  ADD KEY `Restaurants_restaurant_ville_id_6c6ac13d_fk_Restaurants_ville_id` (`ville_id`);

--
-- Index pour la table `restaurants_type`
--
ALTER TABLE `restaurants_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurants_ville`
--
ALTER TABLE `restaurants_ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `restaurants_commentaire`
--
ALTER TABLE `restaurants_commentaire`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `restaurants_restaurant`
--
ALTER TABLE `restaurants_restaurant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `restaurants_type`
--
ALTER TABLE `restaurants_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `restaurants_ville`
--
ALTER TABLE `restaurants_ville`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1286;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `restaurants_commentaire`
--
ALTER TABLE `restaurants_commentaire`
  ADD CONSTRAINT `Restaurants_commenta_restaurant_id_7b444166_fk_Restauran` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants_restaurant` (`id`),
  ADD CONSTRAINT `Restaurants_commentaire_userName_id_37dfd804_fk_auth_user_id` FOREIGN KEY (`userName_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `restaurants_restaurant`
--
ALTER TABLE `restaurants_restaurant`
  ADD CONSTRAINT `Restaurants_restaurant_type_id_302279d9_fk_Restaurants_type_id` FOREIGN KEY (`type_id`) REFERENCES `restaurants_type` (`id`),
  ADD CONSTRAINT `Restaurants_restaurant_ville_id_6c6ac13d_fk_Restaurants_ville_id` FOREIGN KEY (`ville_id`) REFERENCES `restaurants_ville` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
