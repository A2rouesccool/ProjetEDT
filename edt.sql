-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 24 jan. 2019 à 14:09
-- Version du serveur :  10.1.35-MariaDB
-- Version de PHP :  7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `edt`
--

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `heureDebut` int(11) NOT NULL,
  `quartDheureDebut` int(11) NOT NULL,
  `heureFin` int(11) NOT NULL,
  `quartDheureFin` int(11) NOT NULL,
  `jour` int(2) NOT NULL,
  `nomCours` varchar(30) NOT NULL,
  `nomProf` varchar(30) NOT NULL,
  `Salle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`id`, `type`, `heureDebut`, `quartDheureDebut`, `heureFin`, `quartDheureFin`, `jour`, `nomCours`, `nomProf`, `Salle`) VALUES
(0, 'EXAMEN', 8, 2, 10, 0, 2, 'BADA', 'COURTAUD', 'IBGBI 1-108'),
(1, 'EXAMEN', 10, 1, 11, 3, 2, 'BADA', 'COURTAUD', 'IBGBI A-108'),
(2, 'TD', 13, 0, 14, 2, 2, 'COPROAPP', 'DJAFRI', 'IBGBI 1-106'),
(3, 'TD', 14, 3, 16, 1, 2, 'COPROAPP', 'DJAFRI', 'IBGBI 1-106'),
(5, 'CM', 8, 1, 11, 2, 1, 'PROJET', 'BENZAKKI', 'IBGBI 1-113'),
(6, 'TP', 8, 0, 12, 2, 5, 'RECHOP', 'ANGEL', 'IBGBI 1-106');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
