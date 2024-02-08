-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 07 fév. 2024 à 20:22
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
-- Base de données : `laravel_apps`
--

-- --------------------------------------------------------

--
-- Structure de la table `baskets`
--

CREATE TABLE `baskets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_02_014119_create_products_table', 1),
(7, '2024_02_02_020207_create_baskets_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `image_name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `sale_price` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `image_name`, `price`, `sale_price`, `created_at`, `updated_at`) VALUES
(1, 'YouTube Kids', 'YouTube Kids', 'application vidéo conçue pour les enfants\r\nNous avons créé YouTube Kids pour offrir aux enfants une plate-forme plus adaptée qui leur permette d\'explorer le monde par eux-mêmes de manière ludique et simple, et qui permette à leurs parents et aux autres adultes', 'watch-3.png', '250.00', '120.00', '2024-02-02 01:33:50', '2024-02-02 01:33:50'),
(2, 'ibis Paint', 'ibis Paint', 'une application de dessin populaire et polyvalente téléchargée plus de 370millions de fois au total sous forme de série, qui fournit plus de 15 000 pinceaux, plus de 21 000 matériaux, plus de 2100 polices,27 modes de fusion et enregistrement des processus de dessin', 'watch-2.png', '390.00', '250.00', '2024-02-02 01:33:50', '2024-02-02 01:33:50'),
(3, 'Litchi pour DJI Drones', 'Litchi pour DJI Drones', 'Libérez tout le potentiel de votre drone DJI avec Litchi,l\'app numéro 1 pour les drones DJI!\r\nAvec plus de 5000vols quotidiens réussis,Litchi est l\'application de vol la plus fiable pour votre drone DJI avec: DJI Mini 2,Mini SE (version 1 uniquement),Air 2S, Mavic Mini 1\r\n', 'icone15.webp', '550.00', '330.00', '2024-02-02 01:33:50', '2024-02-02 01:33:50'),
(4, 'Pocket Kado', 'Pocket Kado', 'Rencontrez votre nouveau meilleur ami, Kado le koala ! Pocket Kado est un animal de compagnie virtuel dont la routine reflète la vôtre. Apprenez à retrouver le sommeil grâce à une application amusante et efficace contre l\'insomnie développée à Stanford', 'icone14.webp', '250.00', '120.00', '2024-02-02 01:33:50', '2024-02-02 01:33:50'),
(5, 'Canva: Design, Photo & Video', 'Canva: Design, Photo & Video', 'Canva is your free photo editor and video editor in one graphic design app! Create stunning social media posts, videos, cards, flyers, photo collages & more. Stand out with one-tap animations and fun music for Insta stories and video collages.', 'watch-4.png', '390.00', '180.00', '2024-02-02 01:33:50', '2024-02-02 01:33:50'),
(6, 'ibis Paint', 'ibis Paint', 'une application de dessin populaire et polyvalente téléchargée plus de 370millions de fois au total sous forme de série, qui fournit plus de 15 000 pinceaux, plus de 21 000 matériaux, plus de 2100 polices,27 modes de fusion et enregistrement des processus de dessin', 'watch-2.png', '390.00', '250.00', '2024-02-02 01:33:50', '2024-02-02 01:33:50'),
(7, 'Mirror Lab', 'Mirror Lab', 'Miroir Lab vise à être le plus amusant, facile à utiliser et puissant application de retouche photo pour améliorer de façon créative les images,faire des photos, des images miroir de kaléidoscope et\r\ndéformer les visages et les paysages.\r\nCréez des vidéos lisses avec interpolation des paramètres entre les images.\r\n', 'icone17.webp', '550.00', '330.00', '2024-02-02 01:33:50', '2024-02-02 01:33:50'),
(8, 'Photo Studio PRO', 'Photo Studio PRO', 'Photo Studio est une application d\'édition photo multifonction pour les photographes de tout niveau. Elle offre une ample palette d\'outils d\'édition pour toutes les retouches de base et avancées de vos photos. Transformez tous vos clichés en une oeuvre d\'art complète à l\'aide de notre vaste gamme d\'effets, de filtres.', 'icone16.webp', '390.00', '180.00', '2024-02-02 01:33:50', '2024-02-02 01:33:50'),
(9, 'ProShot', 'ProShot', 'NOUVEAU:essayez d\'abord ProShot Evaluator pour voir les fonctionnalités prises en charge par votre appareil\r\nhttps://play.google.com/store/apps\r\nid=com.riseupgames.\r\n\"Les dispositions d\'écran sont excellentes. Les reflex numériques pourraient apprendre une chose ou deux de la conception de ProShot\".', 'icone18.webp', '250.00', '120.00', '2024-02-02 01:33:50', '2024-02-02 01:33:50'),
(10, 'SimpleMind Pro - Mind Mapping', 'SimpleMind Pro - Mind Mapping', 'La cartographie mentale vous aide à organiser vos pensées, à vous souvenir des informations et à générer de nouvelles idées. Nous avons créé une magnifique application intuitive pour vous permettre de créer une carte mentale où que vous soyez et quand vous le souhaitez.', 'icone19.webp', '390.00', '250.00', '2024-02-02 01:33:50', '2024-02-02 01:33:50'),
(11, 'YouTube Kids', 'YouTube Kids', 'application vidéo conçue pour les enfants\r\nNous avons créé YouTube Kids pour offrir aux enfants une plate-forme plus adaptée qui leur permette d\'explorer le monde par eux-mêmes de manière ludique et simple, et qui permette à leurs parents et aux autres adultes', 'watch-3.png', '250.00', '120.00', '2024-02-02 01:48:26', '2024-02-02 01:48:26'),
(12, 'ibis Paint', 'ibis Paint', 'une application de dessin populaire et polyvalente téléchargée plus de 370millions de fois au total sous forme de série, qui fournit plus de 15 000 pinceaux, plus de 21 000 matériaux, plus de 2100 polices,27 modes de fusion et enregistrement des processus de dessin', 'watch-2.png', '390.00', '250.00', '2024-02-02 01:48:26', '2024-02-02 01:48:26'),
(13, 'Litchi pour DJI Drones', 'Litchi pour DJI Drones', 'Libérez tout le potentiel de votre drone DJI avec Litchi,l\'app numéro 1 pour les drones DJI!\r\nAvec plus de 5000vols quotidiens réussis,Litchi est l\'application de vol la plus fiable pour votre drone DJI avec: DJI Mini 2,Mini SE (version 1 uniquement),Air 2S, Mavic Mini 1', 'icone15.webp', '550.00', '330.00', '2024-02-02 01:48:26', '2024-02-02 01:48:26'),
(14, 'Pocket Kado', 'Pocket Kado', 'Rencontrez votre nouveau meilleur ami, Kado le koala ! Pocket Kado est un animal de compagnie virtuel dont la routine reflète la vôtre. Apprenez à retrouver le sommeil grâce à une application amusante et efficace contre l\'insomnie développée à Stanford.', 'icone14.webp', '250.00', '120.00', '2024-02-02 01:48:26', '2024-02-02 01:48:26'),
(15, 'Canva: Design, Photo & Video', 'Canva: Design, Photo & Video', 'Canva is your free photo editor and video editor in one graphic design app! Create stunning social media posts, videos, cards, flyers, photo collages & more. Stand out with one-tap animations and fun music for Insta stories and video collages.', 'watch-4.png', '390.00', '180.00', '2024-02-02 01:48:26', '2024-02-02 01:48:26'),
(16, 'ibis Paint', 'ibis Paint', 'une application de dessin populaire et polyvalente téléchargée plus de 370millions de fois au total sous forme de série, qui fournit plus de 15 000 pinceaux, plus de 21 000 matériaux, plus de 2100 polices,27 modes de fusion et enregistrement des processus de dessin\r\n', 'watch-2.png', '390.00', '250.00', '2024-02-02 01:48:26', '2024-02-02 01:48:26'),
(17, 'Mirror Lab', 'Mirror Lab', 'Miroir Lab vise à être le plus amusant, facile à utiliser et puissant application de retouche photo pour améliorer de façon créative les images,faire des photos, des images miroir de kaléidoscope et\r\ndéformer les visages et les paysages.\r\nCréez des vidéos lisses avec interpolation des paramètres entre les images.\r\n\r\n', 'icone17.webp', '550.00', '330.00', '2024-02-02 01:48:26', '2024-02-02 01:48:26'),
(18, 'Photo Studio PRO', 'Photo Studio PRO', 'Photo Studio est une application d\'édition photo multifonction pour les photographes de tout niveau. Elle offre une ample palette d\'outils d\'édition pour toutes les retouches de base et avancées de vos photos. Transformez tous vos clichés en une oeuvre d\'art complète à l\'aide de notre vaste gamme d\'effets.', 'icone16.webp', '390.00', '180.00', '2024-02-02 01:48:26', '2024-02-02 01:48:26'),
(19, 'ProShot', 'ProShot', 'NOUVEAU:essayez d\'abord ProShot Evaluator pour voir les fonctionnalités prises en charge par votre appareil\r\nhttps://play.google.com/store/apps\r\nid=com.riseupgames.\r\n\"Les dispositions d\'écran sont excellentes. Les reflex numériques pourraient apprendre une chose ou deux de la conception de ProShot\".', 'icone18.webp', '250.00', '120.00', '2024-02-02 01:48:26', '2024-02-02 01:48:26'),
(20, 'SimpleMind Pro - Mind Mapping', 'SimpleMind Pro - Mind Mapping', 'La cartographie mentale vous aide à organiser vos pensées, à vous souvenir des informations et à générer de nouvelles idées. Nous avons créé une magnifique application intuitive pour vous permettre de créer une carte mentale où que vous soyez et quand vous le souhaitez.', 'icone19.webp', '390.00', '250.00', '2024-02-02 01:48:26', '2024-02-02 01:48:26');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test1', 'test1@gmail.com', NULL, '$2y$12$dxjGGPFEY5BV2jj/O//v7uX9xOhJn7Ga28/pMGzL5EyUbhAOVkLdW', NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `baskets`
--
ALTER TABLE `baskets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `baskets_product_id_foreign` (`product_id`),
  ADD KEY `baskets_user_id_foreign` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `baskets`
--
ALTER TABLE `baskets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `baskets`
--
ALTER TABLE `baskets`
  ADD CONSTRAINT `baskets_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `baskets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
