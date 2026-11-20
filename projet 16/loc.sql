-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 20 nov. 2026 à 07:52
-- Version du serveur : 8.0.44
-- Version de PHP : 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `loc`
--

-- --------------------------------------------------------

--
-- Structure de la table `table client`
--

CREATE TABLE `table client` (
  `id_client` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `num_permis` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `table client`
--

INSERT INTO `table client` (`id_client`, `nom`, `prenom`, `num_permis`) VALUES
('043043', 'Jakson', 'Michael', 385330),
('93434985', 'Duval', 'Jason', 64495);

-- --------------------------------------------------------

--
-- Structure de la table `table_location`
--

CREATE TABLE `table_location` (
  `num_location` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `id_client` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `immatriculation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `date_location` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `table_voiture`
--

CREATE TABLE `table_voiture` (
  `marque` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `kilometrage` int NOT NULL,
  `immmatriculation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `date_circulation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `table_voiture`
--

INSERT INTO `table_voiture` (`marque`, `kilometrage`, `immmatriculation`, `date_circulation`) VALUES
('bmw', 16000, 'FF 123 FF', '05/03/2020'),
('audi', 50000, 'TR 123 TR', '03/06/2022');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `table client`
--
ALTER TABLE `table client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `table_location`
--
ALTER TABLE `table_location`
  ADD KEY `immatriculation` (`immatriculation`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `table_voiture`
--
ALTER TABLE `table_voiture`
  ADD PRIMARY KEY (`immmatriculation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `table_location`
--
ALTER TABLE `table_location`
  ADD CONSTRAINT `table_location_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `table_voiture` (`immmatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `table_location_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `table client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
