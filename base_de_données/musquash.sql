-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 27 avr. 2021 à 16:30
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `musquash`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

CREATE TABLE `achat` (
  `IdAchat` int(11) NOT NULL,
  `IdProduit` int(11) DEFAULT NULL,
  `NumClient` int(11) DEFAULT NULL,
  `DateAchat` date DEFAULT NULL,
  `Unite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `adhesion`
--

CREATE TABLE `adhesion` (
  `NumAdhes` int(11) NOT NULL,
  `IdFormule` int(11) NOT NULL,
  `DureeAdhesion` int(11) NOT NULL,
  `DateAdhes` date DEFAULT NULL,
  `TarifAdhes` decimal(12,6) DEFAULT NULL,
  `NumClient` int(11) DEFAULT NULL,
  `IdCasier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `adhesion`
--

INSERT INTO `adhesion` (`NumAdhes`, `IdFormule`, `DureeAdhesion`, `DateAdhes`, `TarifAdhes`, `NumClient`, `IdCasier`) VALUES
(1, 2, 12, '2021-04-27', '90.000000', 6, 1),
(2, 4, 1, '2021-04-27', '35.000000', 7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `casier`
--

CREATE TABLE `casier` (
  `IdCasier` int(11) NOT NULL,
  `DureeResaCasiers` int(11) DEFAULT NULL,
  `TarifCasiers` decimal(12,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `casier`
--

INSERT INTO `casier` (`IdCasier`, `DureeResaCasiers`, `TarifCasiers`) VALUES
(1, 12, '70.000000'),
(2, 12, '70.000000'),
(3, 12, '70.000000'),
(4, 12, '70.000000'),
(5, 12, '70.000000'),
(6, 12, '70.000000'),
(7, 12, '70.000000'),
(8, 12, '70.000000'),
(9, 12, '70.000000'),
(10, 12, '70.000000'),
(11, 12, '70.000000'),
(12, 12, '70.000000'),
(13, 12, '70.000000'),
(14, 12, '70.000000'),
(15, 12, '70.000000'),
(16, 12, '70.000000'),
(17, 12, '70.000000'),
(18, 12, '70.000000'),
(19, 12, '70.000000'),
(20, 12, '70.000000'),
(21, 12, '70.000000'),
(22, 12, '70.000000'),
(23, 12, '70.000000'),
(24, 12, '70.000000'),
(25, 12, '70.000000'),
(26, 12, '70.000000'),
(27, 12, '70.000000'),
(28, 12, '70.000000'),
(29, 12, '70.000000'),
(30, 12, '70.000000'),
(31, 12, '70.000000'),
(32, 12, '70.000000'),
(33, 12, '70.000000'),
(34, 12, '70.000000'),
(35, 12, '70.000000'),
(36, 12, '70.000000'),
(37, 12, '70.000000'),
(38, 12, '70.000000'),
(39, 12, '70.000000'),
(40, 12, '70.000000'),
(41, 12, '70.000000'),
(42, 12, '70.000000'),
(43, 12, '70.000000'),
(44, 12, '70.000000'),
(45, 12, '70.000000'),
(46, 12, '70.000000'),
(47, 12, '70.000000'),
(48, 12, '70.000000'),
(49, 12, '70.000000'),
(50, 12, '70.000000'),
(51, 12, '70.000000'),
(52, 12, '70.000000'),
(53, 12, '70.000000'),
(54, 12, '70.000000'),
(55, 12, '70.000000'),
(56, 12, '70.000000'),
(57, 12, '70.000000'),
(58, 12, '70.000000'),
(59, 12, '70.000000'),
(60, 12, '70.000000'),
(61, 12, '70.000000'),
(62, 12, '70.000000'),
(63, 12, '70.000000'),
(64, 12, '70.000000'),
(65, 12, '70.000000'),
(66, 12, '70.000000'),
(67, 12, '70.000000'),
(68, 12, '70.000000'),
(69, 12, '70.000000'),
(70, 12, '70.000000'),
(80, 1, '7.000000'),
(81, 1, '7.000000'),
(82, 1, '7.000000'),
(83, 1, '7.000000'),
(84, 1, '7.000000'),
(85, 1, '7.000000'),
(86, 1, '7.000000'),
(87, 1, '7.000000'),
(88, 1, '7.000000'),
(89, 1, '7.000000'),
(90, 1, '7.000000'),
(91, 1, '7.000000'),
(92, 1, '7.000000'),
(93, 1, '7.000000'),
(94, 1, '7.000000'),
(95, 1, '7.000000'),
(96, 1, '7.000000'),
(97, 1, '7.000000'),
(98, 1, '7.000000'),
(99, 1, '7.000000'),
(100, 1, '7.000000'),
(101, 1, '7.000000'),
(102, 1, '7.000000'),
(103, 1, '7.000000'),
(104, 1, '7.000000'),
(105, 1, '7.000000'),
(106, 1, '7.000000'),
(107, 1, '7.000000'),
(108, 1, '7.000000'),
(109, 1, '7.000000'),
(110, NULL, '7.000000');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `NumClient` int(11) NOT NULL,
  `NomClient` varchar(30) DEFAULT NULL,
  `PrenomClient` varchar(30) DEFAULT NULL,
  `AdresseClient` varchar(250) DEFAULT NULL,
  `TelClient` varchar(10) DEFAULT NULL,
  `MailClient` varchar(60) DEFAULT NULL,
  `Login` varchar(30) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`NumClient`, `NomClient`, `PrenomClient`, `AdresseClient`, `TelClient`, `MailClient`, `Login`, `Password`, `created_at`) VALUES
(1, 'Bezon', 'Jérémy', '896 rue François Dezeuze34070 Montpellier', '0651631667', 'ageha30@gmail.com', 'ageha30', '123456', '2021-04-07 15:28:45'),
(2, 'Huguet', 'Eric', '245 rue gambetta 30000 Nimes', '0651631665', 'eric.huguet@gmail.com', 'eric34', '123456', '2021-04-07 15:28:45'),
(3, 'Nignan', 'Yvette', '865 rue gambetta 34070 Montpellier', '0651631670', 'yvette.nignan@gmail.com', 'yvette34', '123456', '2021-04-07 15:28:45'),
(4, 'Valadier', 'Mickael', '245 rue des attoles 34400 Lattes', '0651631690', 'mickael.valadier@gmail.com', 'mickael34', '123456', '2021-04-07 15:28:45'),
(5, 'Martin', 'Olivier', '255 chemin de la garde', '0789562347', 'martin.olivier@gmail.com', 'olivier30', '123456', '2021-04-09 15:56:00'),
(6, 'valadier', 'Karine', '25 chemin des platanes', '0601020304', 'karine.valadier@hotmail.com', 'karine30', '123456', '2021-04-09 16:06:20'),
(7, 'dupont', 'loic', '10 route perdu', '0605040708', 'dupont.loic@wahoo.fr', 'loic30', '123456', '2021-04-09 16:08:19');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `IdFonction` int(11) NOT NULL,
  `LibelleFonction` varchar(80) DEFAULT NULL,
  `isProf` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`IdFonction`, `LibelleFonction`, `isProf`) VALUES
(1, 'Administrateur', 0),
(2, 'Employé', 0),
(3, 'Profgym', 1),
(4, 'ProfSquach', 1);

-- --------------------------------------------------------

--
-- Structure de la table `formule`
--

CREATE TABLE `formule` (
  `IdFormule` int(11) NOT NULL,
  `NomFormule` varchar(255) NOT NULL,
  `TarifFormule` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formule`
--

INSERT INTO `formule` (`IdFormule`, `NomFormule`, `TarifFormule`) VALUES
(1, 'Formule Salle de Musculation', 0),
(2, 'Formule Cours de Gymnastique', 0),
(3, 'Formule Terrain de Squash', 0),
(4, 'Formule Cours Particulier Squash', 0),
(5, 'Formule Cours Groupe Squash', 0);

-- --------------------------------------------------------

--
-- Structure de la table `formuletypecours`
--

CREATE TABLE `formuletypecours` (
  `IdFormule` int(11) NOT NULL,
  `IdTypeCours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formuletypecours`
--

INSERT INTO `formuletypecours` (`IdFormule`, `IdTypeCours`) VALUES
(2, 3),
(3, 4),
(4, 1),
(4, 4),
(5, 2),
(5, 4);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `NumPerso` int(11) NOT NULL,
  `NomPerso` varchar(30) DEFAULT NULL,
  `PrenomPerso` varchar(30) DEFAULT NULL,
  `AdressePerso` varchar(250) DEFAULT NULL,
  `TelPerso` varchar(15) DEFAULT NULL,
  `MailPerso` varchar(60) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `IdFonction` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`NumPerso`, `NomPerso`, `PrenomPerso`, `AdressePerso`, `TelPerso`, `MailPerso`, `Password`, `created_at`, `IdFonction`) VALUES
(1, 'Bezon', 'Jérémy', '896 rue François Dezeuze34070 Montpellier', '0651631667', 'ageha30@gmail.com', '123456', '2021-04-07 15:28:45', 1),
(2, 'Huguet', 'Eric', '245 rue gambetta 30000 Nimes', '0651631665', 'eric.huguet@gmail.com', '123456', '2021-04-07 15:28:45', 1),
(3, 'Nignan', 'Yvette', '865 rue gambetta 34070 Montpellier', '0651631670', 'yvette.nignan@gmail.com', '123456', '2021-04-07 15:28:45', 1),
(4, 'Valadier', 'Mickael', '245 rue des attoles 34400 Lattes', '0651631690', 'mickael.valadier@gmail.com', '123456', '2021-04-07 15:28:45', 1),
(5, 'Germain', 'Patrick', '29 ave de Latour', '0605040302', 'patrick.germain@gmail.com', '123456', '2021-04-08 17:57:18', 3),
(6, 'Blondel', 'marc', '85 route du canal', '0706080908', 'blondel.marc@hotmail.com', '123456', '2021-04-09 11:04:15', 4),
(9, 'copain', 'marc', '49 ave de Latour', '06010203204', 'copain.marc@gmail.com', '123456', '2021-04-20 15:19:57', 3);

-- --------------------------------------------------------

--
-- Structure de la table `planification`
--

CREATE TABLE `planification` (
  `IdPlanification` int(11) NOT NULL,
  `DatePlanification` datetime NOT NULL,
  `NumSalle` int(11) NOT NULL,
  `NumTypeCours` int(11) NOT NULL,
  `NumPerso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `planification`
--

INSERT INTO `planification` (`IdPlanification`, `DatePlanification`, `NumSalle`, `NumTypeCours`, `NumPerso`) VALUES
(1, '2021-04-21 03:04:00', 1, 3, 5),
(2, '2021-04-22 00:00:00', 2, 3, 5),
(3, '2021-04-14 00:00:00', 11, 1, 6),
(4, '2021-04-23 10:21:50', 4, 1, 5),
(5, '2021-04-23 10:19:39', 10, 3, 9),
(8, '2021-04-29 13:40:00', 8, 3, 6);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `IdProduit` int(11) NOT NULL,
  `LibelleProduit` varchar(100) DEFAULT NULL,
  `PrixProduit` decimal(12,6) DEFAULT NULL,
  `IdTypeProduit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `IdReservation` int(11) NOT NULL,
  `IdPlanification` int(11) NOT NULL,
  `NumClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`IdReservation`, `IdPlanification`, `NumClient`) VALUES
(1, 2, 6),
(2, 3, 7);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `NumSalle` int(11) NOT NULL,
  `NomSalle` varchar(80) DEFAULT NULL,
  `NumTypeSalle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`NumSalle`, `NomSalle`, `NumTypeSalle`) VALUES
(1, 'Salle de Gym n°1', 1),
(2, 'Salle de Gym n°2', 1),
(3, 'Salle de Gym n°3', 1),
(4, 'Salle de Gym n°4', 1),
(5, 'Salle de Gym n°5', 1),
(6, 'Salle de Gym n°6', 1),
(7, 'Salle de Gym n°7', 1),
(8, 'Salle de Gym n°8', 1),
(9, 'Salle de Gym n°9', 1),
(10, 'Salle de Gym n°10', 1),
(11, 'Terrain Squash n°1', 2),
(12, 'Terrain Squash n°2', 2),
(13, 'Terrain Squash n°3', 2),
(14, 'Terrain Squash n°4', 2),
(15, 'Terrain Squash n°5', 2),
(16, 'Terrain Squash n°6', 2),
(27, 'Salle de Musculation', 3);

-- --------------------------------------------------------

--
-- Structure de la table `typecours`
--

CREATE TABLE `typecours` (
  `NumTypeCours` int(11) NOT NULL,
  `NomTypeCours` varchar(80) DEFAULT NULL,
  `DureeCours` time DEFAULT NULL,
  `NbMaxDisponibilite` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `typecours`
--

INSERT INTO `typecours` (`NumTypeCours`, `NomTypeCours`, `DureeCours`, `NbMaxDisponibilite`) VALUES
(1, 'Cours de Squash particulier', '01:00:00', 1),
(2, 'Cours de Squash groupé', '02:00:00', 6),
(3, 'Cours de Gymnastique', '01:00:00', 10),
(4, 'Terrain Squash', '01:00:00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `typeproduit`
--

CREATE TABLE `typeproduit` (
  `IdTypeProduit` int(11) NOT NULL,
  `LibelleTypeProduit` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `typesalle`
--

CREATE TABLE `typesalle` (
  `NumTypeSalle` int(11) NOT NULL,
  `NomTypesalle` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `typesalle`
--

INSERT INTO `typesalle` (`NumTypeSalle`, `NomTypesalle`) VALUES
(1, 'Gym'),
(2, 'Squash'),
(3, 'muscu');

-- --------------------------------------------------------

--
-- Structure de la table `typesalletypecours`
--

CREATE TABLE `typesalletypecours` (
  `NumTypeCours` int(11) NOT NULL,
  `NumTypeSalle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `typesalletypecours`
--

INSERT INTO `typesalletypecours` (`NumTypeCours`, `NumTypeSalle`) VALUES
(3, 1),
(1, 2),
(2, 2),
(4, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achat`
--
ALTER TABLE `achat`
  ADD PRIMARY KEY (`IdAchat`),
  ADD UNIQUE KEY `IdProduit` (`IdProduit`,`NumClient`,`DateAchat`),
  ADD KEY `NumClient` (`NumClient`);

--
-- Index pour la table `adhesion`
--
ALTER TABLE `adhesion`
  ADD PRIMARY KEY (`NumAdhes`),
  ADD KEY `NumClient` (`NumClient`),
  ADD KEY `IdCasier` (`IdCasier`),
  ADD KEY `adhesion_ibfk_1` (`IdFormule`);

--
-- Index pour la table `casier`
--
ALTER TABLE `casier`
  ADD PRIMARY KEY (`IdCasier`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`NumClient`),
  ADD UNIQUE KEY `Login` (`Login`);

--
-- Index pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`IdFonction`);

--
-- Index pour la table `formule`
--
ALTER TABLE `formule`
  ADD PRIMARY KEY (`IdFormule`);

--
-- Index pour la table `formuletypecours`
--
ALTER TABLE `formuletypecours`
  ADD UNIQUE KEY `IdFormule` (`IdFormule`,`IdTypeCours`),
  ADD KEY `FkTypeCours` (`IdTypeCours`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`NumPerso`),
  ADD UNIQUE KEY `MailPerso` (`MailPerso`),
  ADD KEY `IdFonction` (`IdFonction`);

--
-- Index pour la table `planification`
--
ALTER TABLE `planification`
  ADD PRIMARY KEY (`IdPlanification`),
  ADD UNIQUE KEY `DatePlanification` (`DatePlanification`,`NumSalle`,`NumTypeCours`) USING BTREE,
  ADD KEY `NumSalle` (`NumSalle`),
  ADD KEY `NumTypeCours` (`NumTypeCours`),
  ADD KEY `NumPerso` (`NumPerso`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`IdProduit`),
  ADD KEY `IdTypeProduit` (`IdTypeProduit`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`IdReservation`),
  ADD UNIQUE KEY `IdPlanification` (`IdPlanification`,`NumClient`),
  ADD KEY `NumClient` (`NumClient`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`NumSalle`),
  ADD KEY `NumTypeSalle` (`NumTypeSalle`);

--
-- Index pour la table `typecours`
--
ALTER TABLE `typecours`
  ADD PRIMARY KEY (`NumTypeCours`);

--
-- Index pour la table `typeproduit`
--
ALTER TABLE `typeproduit`
  ADD PRIMARY KEY (`IdTypeProduit`);

--
-- Index pour la table `typesalle`
--
ALTER TABLE `typesalle`
  ADD PRIMARY KEY (`NumTypeSalle`);

--
-- Index pour la table `typesalletypecours`
--
ALTER TABLE `typesalletypecours`
  ADD PRIMARY KEY (`NumTypeSalle`,`NumTypeCours`),
  ADD KEY `NumTypeCours` (`NumTypeCours`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achat`
--
ALTER TABLE `achat`
  MODIFY `IdAchat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `adhesion`
--
ALTER TABLE `adhesion`
  MODIFY `NumAdhes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `casier`
--
ALTER TABLE `casier`
  MODIFY `IdCasier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `NumClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `IdFonction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `formule`
--
ALTER TABLE `formule`
  MODIFY `IdFormule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `NumPerso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `planification`
--
ALTER TABLE `planification`
  MODIFY `IdPlanification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `IdProduit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `IdReservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `NumSalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `typecours`
--
ALTER TABLE `typecours`
  MODIFY `NumTypeCours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `typeproduit`
--
ALTER TABLE `typeproduit`
  MODIFY `IdTypeProduit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `typesalle`
--
ALTER TABLE `typesalle`
  MODIFY `NumTypeSalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achat`
--
ALTER TABLE `achat`
  ADD CONSTRAINT `achat_ibfk_1` FOREIGN KEY (`NumClient`) REFERENCES `client` (`NumClient`),
  ADD CONSTRAINT `achat_ibfk_2` FOREIGN KEY (`IdProduit`) REFERENCES `produit` (`IdProduit`);

--
-- Contraintes pour la table `adhesion`
--
ALTER TABLE `adhesion`
  ADD CONSTRAINT `adhesion_ibfk_1` FOREIGN KEY (`IdFormule`) REFERENCES `formule` (`IdFormule`),
  ADD CONSTRAINT `adhesion_ibfk_2` FOREIGN KEY (`NumClient`) REFERENCES `client` (`NumClient`),
  ADD CONSTRAINT `adhesion_ibfk_3` FOREIGN KEY (`IdCasier`) REFERENCES `casier` (`IdCasier`);

--
-- Contraintes pour la table `formuletypecours`
--
ALTER TABLE `formuletypecours`
  ADD CONSTRAINT `FkFormule` FOREIGN KEY (`IdFormule`) REFERENCES `formule` (`IdFormule`),
  ADD CONSTRAINT `FkTypeCours` FOREIGN KEY (`IdTypeCours`) REFERENCES `typecours` (`NumTypeCours`);

--
-- Contraintes pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_ibfk_1` FOREIGN KEY (`IdFonction`) REFERENCES `fonction` (`IdFonction`);

--
-- Contraintes pour la table `planification`
--
ALTER TABLE `planification`
  ADD CONSTRAINT `planification_ibfk_1` FOREIGN KEY (`NumSalle`) REFERENCES `salle` (`NumSalle`),
  ADD CONSTRAINT `planification_ibfk_2` FOREIGN KEY (`NumTypeCours`) REFERENCES `typecours` (`NumTypeCours`),
  ADD CONSTRAINT `planification_ibfk_3` FOREIGN KEY (`NumPerso`) REFERENCES `personnel` (`NumPerso`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`IdTypeProduit`) REFERENCES `typeproduit` (`IdTypeProduit`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`IdPlanification`) REFERENCES `planification` (`IdPlanification`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`NumClient`) REFERENCES `client` (`NumClient`);

--
-- Contraintes pour la table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`NumTypeSalle`) REFERENCES `typesalle` (`NumTypeSalle`);

--
-- Contraintes pour la table `typesalletypecours`
--
ALTER TABLE `typesalletypecours`
  ADD CONSTRAINT `typesalletypecours_ibfk_1` FOREIGN KEY (`NumTypeSalle`) REFERENCES `typesalle` (`NumTypeSalle`),
  ADD CONSTRAINT `typesalletypecours_ibfk_2` FOREIGN KEY (`NumTypeCours`) REFERENCES `typecours` (`NumTypeCours`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
