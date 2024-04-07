-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 07 avr. 2024 à 14:34
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `harrycrad's`
--

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

CREATE TABLE `agent` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inventory`
--

CREATE TABLE `inventory` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `card` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `inventory`
--

INSERT INTO `inventory` (`id`, `userId`, `card`, `created_at`, `updated_at`) VALUES
(1, 36, 'Card Name', '2024-04-07 14:21:10.523', '2024-04-07 14:21:10.523');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_at` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2),
  `Updated_at` timestamp(2) NOT NULL,
  `pseudo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favoriteCard` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listelikedcard` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maison` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'serpentard'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `Created_at`, `Updated_at`, `pseudo`, `favoriteCard`, `listelikedcard`, `maison`) VALUES
(1, 'a@a', '$2b$10$uEdm2B/sQyFmeN71.vCm4eRMtaOsucOBlsKWUhUCGz0n.uoWold32', '2024-04-05 10:38:55.45', '2024-04-05 10:38:55.45', 'a', NULL, NULL, 'serdaigle'),
(2, 'noa.obringer@gmail.com', '$2b$10$x15GdeqVFyuaTAdXJbkG/uDVwo.MoL4PPBRQ2N5P5y5DjVpQ15dnW', '2024-04-05 11:07:57.86', '2024-04-05 11:07:57.86', 'toto', NULL, NULL, 'serdaigne'),
(4, 'a@aa', '$2b$10$aUr/sb9pekTYiuDrNxhD3OYYH58XT0Gz0mMVqRCyZBq6tVE6Ffvr2', '2024-04-05 11:08:51.44', '2024-04-05 11:08:51.44', 'aa', NULL, NULL, 'serdaigle'),
(8, 'a@aaaaaaaaaa', '$2b$10$8zkiEdw6cvYRB6Psr9osq.zvIdxzvH0RwtxRL8cRC.Bze2JmGCk7a', '2024-04-05 11:10:48.69', '2024-04-05 11:10:48.69', 'azerty', NULL, NULL, 'serdaigne'),
(9, 'noa@test.fr', '$2b$10$BBfoyvT1dxG.eF2f6NDSDufboRjKyRyAIgJOeHyEXqi3P7le/xTIG', '2024-04-05 11:13:08.80', '2024-04-05 11:13:08.80', 'noa', NULL, NULL, 'gryfondor'),
(10, 'a@aazec', '$2b$10$Dre82e2pvWAtSFz3O6PmCenvjZkRnhoOm8F56NbPpZptO1ZLh33Nq', '2024-04-05 11:13:49.54', '2024-04-05 11:13:49.54', 'azertyh', NULL, NULL, 'serpentard'),
(12, 'a@aazecq', '$2b$10$8jKze0SJ8sQpjtb4yPLcC.C5/a9f1xZBjpskaprMEuPVJyj4un.Ie', '2024-04-05 11:15:50.39', '2024-04-05 11:15:50.39', 'azertyhq', NULL, NULL, 'serpentard'),
(13, 'z@z', '$2b$10$MOn4d/nA3km.4qpQIelHLOJIYah7PZXOPfYMqZog60/UqV3OPdSX2', '2024-04-05 11:16:24.77', '2024-04-05 11:16:24.77', 'zz', NULL, NULL, 'serpentard'),
(14, 'aa@aaaa', '$2b$10$7r.c/TrjQU8IYOsaOSluBewD3K1XXnwAXTd.CWUjHbxuncOJK8cdC', '2024-04-05 11:23:09.75', '2024-04-05 11:23:09.75', 'aaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, 'serpentard'),
(15, 'aa@aaaaa', '$2b$10$D8ZkBdMkZimDMSjLTo6KCu5ST2wfa8gxor56YY4CkRVJXiDuExWa2', '2024-04-05 11:24:08.25', '2024-04-05 11:24:08.25', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL, 'serpentard'),
(16, 'azaz@azaz', '$2b$10$TgHXTt1SLv6LqPKrQe.AGOp2sFk1KQC/ZZONq3EvzHSbEiCmC8rhm', '2024-04-05 11:25:11.74', '2024-04-05 11:25:11.74', 'aaze', NULL, NULL, 'serpentard'),
(17, 'z@sd', '$2b$10$FsBGbIh1YMY3XMz4XJE2iehjlqP/SeJ2qNEA/cQQ.LFnTJdwEvcFO', '2024-04-05 11:27:00.96', '2024-04-05 11:27:00.96', 'azz', NULL, NULL, 'serpentard'),
(18, 'q@qq', '$2b$10$MqnqIWVsOP2vdquiiAZkE.ghffSqJeN6GSCDhlWvvyVURMVQupJSm', '2024-04-05 11:31:02.78', '2024-04-05 11:31:02.78', 'qqqqq', NULL, NULL, 'serpentard'),
(19, 'azazazaz@aza', '$2b$10$cAwZu9DgJyfiwjYxFGyfNOWY.uPydOZxqYnCfHuH7nhIeIIyHRlhy', '2024-04-05 11:34:52.66', '2024-04-05 11:34:52.66', 'aaaazazaza', NULL, NULL, 'serpentard'),
(21, 'email@example.coma', '$2b$10$zekgMHLp59I2HOmDrxWeKuPPDQPMNrMalOkXWOcRNyqXlySc2e19u', '2024-04-05 11:44:29.83', '2024-04-05 11:44:29.83', 'pseudoa', NULL, NULL, 'maison'),
(28, 'rererer@ererer', '$2b$10$PVSQIM6tljVUtS.Iz/RRfOTBRRCnuows5SLDidhHnUbYZw/mTvePa', '2024-04-05 13:51:20.30', '2024-04-05 13:51:20.30', 'reere', NULL, NULL, 'serpentard'),
(30, 'popi@popi', '$2b$10$STqiw4YuMBczU6pQG0RZauEOFlPReWASEySB1VUqDHHSayhuP6KRa', '2024-04-05 13:52:32.74', '2024-04-05 13:52:32.74', 'popi', NULL, NULL, 'serpentard'),
(32, 'popi@popizzzz', '$2b$10$Wz2uTDXTOJLk4mWdfzDz4uYvDP2ty3rorF8bFP.kdZqSRdBmtVpcm', '2024-04-05 13:54:09.53', '2024-04-05 13:54:09.53', 'popi', NULL, NULL, 'serpentard'),
(33, 'popi@popizzzzzz', '$2b$10$b/a7AXlti0Zztd2JZwWiE.y6YuXzbVfMajrQ0wRfOlOwSJURPKW8a', '2024-04-05 13:54:37.20', '2024-04-05 13:54:37.20', 'popi', NULL, NULL, 'serpentard'),
(34, 'popi@popizzzzzzzz', '$2b$10$KpNhxDWiTgZ4pqWcevfjt.3EncofAi/y3N7BVCKxdbooa8v3QVcIe', '2024-04-05 13:54:42.25', '2024-04-05 13:54:42.25', 'popi', NULL, NULL, 'serpentard'),
(35, 'toto@tototo', '$2b$10$t.KWJb3iDByzPlk0FrG8S./XmA/cOPSlAhLOWr65z7YCFUdLC8s0y', '2024-04-05 13:54:55.80', '2024-04-05 13:54:55.80', 'toto', NULL, NULL, 'serpentard'),
(36, 'pore@pore', '$2b$10$JNXEqI4VxLD5HhAXJahlKudEenb7Ij0i/gllicQIpN7ZvDbHFaROa', '2024-04-07 12:20:54.85', '2024-04-07 12:20:54.85', 'rototo', NULL, NULL, 'poufsouffle'),
(37, 'mito@mito', '$2b$10$L/3l0fG2zVmlpFYli/iHm.epJ/7ufuEyAy9wniFdVB0QQaZSWG102', '2024-04-07 12:21:34.22', '2024-04-07 12:21:34.22', 'mito', NULL, NULL, 'gryfondor');

-- --------------------------------------------------------

--
-- Structure de la table `usercard`
--

CREATE TABLE `usercard` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `carte` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('26e6617c-0bbb-4657-b96d-b6471563cb2f', '659e1d8b6bada9ce66d1195438ffb9e2201d9aad12256ee644ee5141f856d8e8', '2024-04-07 14:04:37.358', '20240407140437_ajout_de_l_inventaire', NULL, NULL, '2024-04-07 14:04:37.213', 1),
('405a2b77-a7ac-4902-8d61-9b9bf5b85523', 'a795b2b50b1612cc6db97b4e9828fd8b336881059091e7573f27b54b8a12673f', '2024-04-05 12:32:18.026', '20240405123217_add_user', NULL, NULL, '2024-04-05 12:32:17.993', 1),
('5ee4925d-f028-4f99-82f8-80874a356efe', '30be028201228adf843a04799c2c427386c078f25c8ff27de6fe247c02a65b49', '2024-04-05 12:31:53.379', '20240403130604_add_agent_add_user', NULL, NULL, '2024-04-05 12:31:53.325', 1),
('bbc96c76-bd63-4f75-99ea-10558b22306d', '780d0f7c6000dbc5c82899f636c4606d55e18bfeb8f384cb99d77bec764a26d6', '2024-04-05 12:33:45.769', '20240405123345_default_sepentard', NULL, NULL, '2024-04-05 12:33:45.744', 1),
('eb41fc8e-bfac-48fd-a2f2-71f8a2f3cd0c', 'c5cfdec9a39dbbae6c963b8b639598e7f47efebe84167edf94aa6a6e1ae816b3', '2024-04-05 15:53:48.431', '20240405155348_pseudo_no_unique', NULL, NULL, '2024-04-05 15:53:48.417', 1),
('fac4e5c4-45e1-462d-b56e-c59a8ca3d6b3', '503ac7004773d4419b36c122175bf3d5d9bf56518385a8d88e9af69365ca4b52', '2024-04-05 12:31:53.394', '20240403135024_modif_pseudo_id_to_pseudo', NULL, NULL, '2024-04-05 12:31:53.380', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Inventory_userId_fkey` (`userId`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_key` (`email`);

--
-- Index pour la table `usercard`
--
ALTER TABLE `usercard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userCard_userId_fkey` (`userId`);

--
-- Index pour la table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `usercard`
--
ALTER TABLE `usercard`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `Inventory_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Contraintes pour la table `usercard`
--
ALTER TABLE `usercard`
  ADD CONSTRAINT `userCard_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
