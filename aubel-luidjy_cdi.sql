-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: mysql-aubel-luidjy.alwaysdata.net
-- Generation Time: Mar 29, 2021 at 05:21 PM
-- Server version: 10.5.8-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aubel-luidjy_cdi`
--

-- --------------------------------------------------------

--
-- Table structure for table `appartenir_a_un_genre`
--

CREATE TABLE `appartenir_a_un_genre` (
  `id` int(11) NOT NULL,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `correspondre`
--

CREATE TABLE `correspondre` (
  `id` int(11) NOT NULL,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `date_rencontre`
--

CREATE TABLE `date_rencontre` (
  `id` int(11) NOT NULL,
  `date_rencontre` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `editeur`
--

CREATE TABLE `editeur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emprunter`
--

CREATE TABLE `emprunter` (
  `id` int(11) NOT NULL,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `etage`
--

CREATE TABLE `etage` (
  `id_1` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `etre_marié_avec`
--

CREATE TABLE `etre_marié_avec` (
  `id` int(11) NOT NULL,
  `id_1` int(11) NOT NULL,
  `date_mariage` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `etre_originaire_de`
--

CREATE TABLE `etre_originaire_de` (
  `id` int(11) NOT NULL,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `etre_ranger_dans`
--

CREATE TABLE `etre_ranger_dans` (
  `id` int(11) NOT NULL,
  `id_2` int(11) NOT NULL,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Exemplaire`
--

CREATE TABLE `Exemplaire` (
  `id` int(11) NOT NULL,
  `etat` varchar(50) DEFAULT NULL,
  `annee_edition` decimal(4,0) DEFAULT NULL,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `genre_livre`
--

CREATE TABLE `genre_livre` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inscrit`
--

CREATE TABLE `inscrit` (
  `id` int(11) NOT NULL,
  `num_carte` int(11) DEFAULT NULL,
  `date_inscription` date DEFAULT NULL,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Livre`
--

CREATE TABLE `Livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `ISBN` varchar(50) DEFAULT NULL,
  `annee` decimal(4,0) DEFAULT NULL,
  `resume` varchar(50) DEFAULT NULL,
  `id_1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `rue` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Rayon`
--

CREATE TABLE `Rayon` (
  `id` int(11) NOT NULL,
  `localisation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rediger`
--

CREATE TABLE `rediger` (
  `id` int(11) NOT NULL,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rencontrer`
--

CREATE TABLE `rencontrer` (
  `id` int(11) NOT NULL,
  `id_1` int(11) NOT NULL,
  `id_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `type_livre`
--

CREATE TABLE `type_livre` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appartenir_a_un_genre`
--
ALTER TABLE `appartenir_a_un_genre`
  ADD PRIMARY KEY (`id`,`id_1`),
  ADD KEY `id_1` (`id_1`);

--
-- Indexes for table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `correspondre`
--
ALTER TABLE `correspondre`
  ADD PRIMARY KEY (`id`,`id_1`),
  ADD KEY `id_1` (`id_1`);

--
-- Indexes for table `date_rencontre`
--
ALTER TABLE `date_rencontre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emprunter`
--
ALTER TABLE `emprunter`
  ADD PRIMARY KEY (`id`,`id_1`),
  ADD KEY `id_1` (`id_1`);

--
-- Indexes for table `etage`
--
ALTER TABLE `etage`
  ADD PRIMARY KEY (`id_1`,`id`);

--
-- Indexes for table `etre_marié_avec`
--
ALTER TABLE `etre_marié_avec`
  ADD PRIMARY KEY (`id`,`id_1`),
  ADD KEY `id_1` (`id_1`);

--
-- Indexes for table `etre_originaire_de`
--
ALTER TABLE `etre_originaire_de`
  ADD PRIMARY KEY (`id`,`id_1`),
  ADD KEY `id_1` (`id_1`);

--
-- Indexes for table `etre_ranger_dans`
--
ALTER TABLE `etre_ranger_dans`
  ADD PRIMARY KEY (`id`,`id_2`,`id_1`),
  ADD KEY `id_2` (`id_2`,`id_1`);

--
-- Indexes for table `Exemplaire`
--
ALTER TABLE `Exemplaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_1` (`id_1`);

--
-- Indexes for table `genre_livre`
--
ALTER TABLE `genre_livre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inscrit`
--
ALTER TABLE `inscrit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_1` (`id_1`);

--
-- Indexes for table `Livre`
--
ALTER TABLE `Livre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_1` (`id_1`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Rayon`
--
ALTER TABLE `Rayon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rediger`
--
ALTER TABLE `rediger`
  ADD PRIMARY KEY (`id`,`id_1`),
  ADD KEY `id_1` (`id_1`);

--
-- Indexes for table `rencontrer`
--
ALTER TABLE `rencontrer`
  ADD PRIMARY KEY (`id`,`id_1`,`id_2`),
  ADD KEY `id_1` (`id_1`),
  ADD KEY `id_2` (`id_2`);

--
-- Indexes for table `type_livre`
--
ALTER TABLE `type_livre`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appartenir_a_un_genre`
--
ALTER TABLE `appartenir_a_un_genre`
  ADD CONSTRAINT `appartenir_a_un_genre_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Livre` (`id`),
  ADD CONSTRAINT `appartenir_a_un_genre_ibfk_2` FOREIGN KEY (`id_1`) REFERENCES `genre_livre` (`id`);

--
-- Constraints for table `auteur`
--
ALTER TABLE `auteur`
  ADD CONSTRAINT `auteur_ibfk_1` FOREIGN KEY (`id`) REFERENCES `personne` (`id`);

--
-- Constraints for table `correspondre`
--
ALTER TABLE `correspondre`
  ADD CONSTRAINT `correspondre_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Livre` (`id`),
  ADD CONSTRAINT `correspondre_ibfk_2` FOREIGN KEY (`id_1`) REFERENCES `Exemplaire` (`id`);

--
-- Constraints for table `emprunter`
--
ALTER TABLE `emprunter`
  ADD CONSTRAINT `emprunter_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Exemplaire` (`id`),
  ADD CONSTRAINT `emprunter_ibfk_2` FOREIGN KEY (`id_1`) REFERENCES `inscrit` (`id`);

--
-- Constraints for table `etage`
--
ALTER TABLE `etage`
  ADD CONSTRAINT `etage_ibfk_1` FOREIGN KEY (`id_1`) REFERENCES `Rayon` (`id`);

--
-- Constraints for table `etre_marié_avec`
--
ALTER TABLE `etre_marié_avec`
  ADD CONSTRAINT `etre_marié_avec_ibfk_1` FOREIGN KEY (`id`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `etre_marié_avec_ibfk_2` FOREIGN KEY (`id_1`) REFERENCES `personne` (`id`);

--
-- Constraints for table `etre_originaire_de`
--
ALTER TABLE `etre_originaire_de`
  ADD CONSTRAINT `etre_originaire_de_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pays` (`id`),
  ADD CONSTRAINT `etre_originaire_de_ibfk_2` FOREIGN KEY (`id_1`) REFERENCES `personne` (`id`);

--
-- Constraints for table `etre_ranger_dans`
--
ALTER TABLE `etre_ranger_dans`
  ADD CONSTRAINT `etre_ranger_dans_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Exemplaire` (`id`),
  ADD CONSTRAINT `etre_ranger_dans_ibfk_2` FOREIGN KEY (`id_2`,`id_1`) REFERENCES `etage` (`id_1`, `id`);

--
-- Constraints for table `Exemplaire`
--
ALTER TABLE `Exemplaire`
  ADD CONSTRAINT `Exemplaire_ibfk_1` FOREIGN KEY (`id_1`) REFERENCES `editeur` (`id`);

--
-- Constraints for table `inscrit`
--
ALTER TABLE `inscrit`
  ADD CONSTRAINT `inscrit_ibfk_1` FOREIGN KEY (`id_1`) REFERENCES `personne` (`id`);

--
-- Constraints for table `Livre`
--
ALTER TABLE `Livre`
  ADD CONSTRAINT `Livre_ibfk_1` FOREIGN KEY (`id_1`) REFERENCES `type_livre` (`id`);

--
-- Constraints for table `rediger`
--
ALTER TABLE `rediger`
  ADD CONSTRAINT `rediger_ibfk_1` FOREIGN KEY (`id`) REFERENCES `auteur` (`id`),
  ADD CONSTRAINT `rediger_ibfk_2` FOREIGN KEY (`id_1`) REFERENCES `Livre` (`id`);

--
-- Constraints for table `rencontrer`
--
ALTER TABLE `rencontrer`
  ADD CONSTRAINT `rencontrer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `auteur` (`id`),
  ADD CONSTRAINT `rencontrer_ibfk_2` FOREIGN KEY (`id_1`) REFERENCES `inscrit` (`id`),
  ADD CONSTRAINT `rencontrer_ibfk_3` FOREIGN KEY (`id_2`) REFERENCES `date_rencontre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
