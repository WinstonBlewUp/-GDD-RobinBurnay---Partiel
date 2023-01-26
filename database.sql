-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 26 jan. 2023 à 14:48
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `GDD - Partiel`
--

-- --------------------------------------------------------

--
-- Structure de la table `Table Customer`
--

CREATE TABLE `Table Customer` (
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `date_in` date NOT NULL,
  `date_out` date NOT NULL,
  `n_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Table Employees`
--

CREATE TABLE `Table Employees` (
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `hire_date` date NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `n_employees` int(11) NOT NULL,
  `salary` int(10) NOT NULL,
  `num_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Table Hotel`
--

CREATE TABLE `Table Hotel` (
  `name` varchar(25) NOT NULL,
  `location` varchar(50) NOT NULL,
  `num_room` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Table Room`
--

CREATE TABLE `Table Room` (
  `num_room` int(11) NOT NULL,
  `type_room` varchar(10) NOT NULL,
  `type_bed` int(11) NOT NULL,
  `n_room` int(11) NOT NULL,
  `busy` varchar(25) NOT NULL,
  `date_in` date NOT NULL,
  `date_out` date NOT NULL,
  `id_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Table Customer`
--
ALTER TABLE `Table Customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `id_employee` (`id_employee`);

--
-- Index pour la table `Table Employees`
--
ALTER TABLE `Table Employees`
  ADD PRIMARY KEY (`id_employee`);

--
-- Index pour la table `Table Hotel`
--
ALTER TABLE `Table Hotel`
  ADD KEY `num_room` (`num_room`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_employee` (`id_employee`);

--
-- Index pour la table `Table Room`
--
ALTER TABLE `Table Room`
  ADD PRIMARY KEY (`num_room`),
  ADD KEY `id_customer` (`id_customer`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Table Customer`
--
ALTER TABLE `Table Customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Table Employees`
--
ALTER TABLE `Table Employees`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Table Room`
--
ALTER TABLE `Table Room`
  MODIFY `num_room` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Table Customer`
--
ALTER TABLE `Table Customer`
  ADD CONSTRAINT `table customer_ibfk_1` FOREIGN KEY (`id_employee`) REFERENCES `Table Employees` (`id_employee`);

--
-- Contraintes pour la table `Table Hotel`
--
ALTER TABLE `Table Hotel`
  ADD CONSTRAINT `table hotel_ibfk_1` FOREIGN KEY (`id_employee`) REFERENCES `Table Employees` (`id_employee`);

--
-- Contraintes pour la table `Table Room`
--
ALTER TABLE `Table Room`
  ADD CONSTRAINT `table room_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `Table Customer` (`id_customer`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
