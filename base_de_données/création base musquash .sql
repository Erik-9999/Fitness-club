-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 06 mai 2021 à 10:56
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



-- --------------------------------------------------------

--
-- Structure de la table `casier`
--

CREATE TABLE `casier` (
  `IdCasier` int(11) NOT NULL,
  `DureeResaCasiers` int(11) DEFAULT NULL,
  `TarifCasiers` decimal(12,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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


-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `IdFonction` int(11) NOT NULL,
  `LibelleFonction` varchar(80) DEFAULT NULL,
  `isProf` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------

--
-- Structure de la table `formule`
--

CREATE TABLE `formule` (
  `IdFormule` int(11) NOT NULL,
  `NomFormule` varchar(255) NOT NULL,
  `TarifFormule` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `formuletypecours`
--

CREATE TABLE `formuletypecours` (
  `IdFormule` int(11) NOT NULL,
  `IdTypeCours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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



-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `NumSalle` int(11) NOT NULL,
  `NomSalle` varchar(80) DEFAULT NULL,
  `NumTypeSalle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



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


-- --------------------------------------------------------

--
-- Structure de la table `typesalletypecours`
--

CREATE TABLE `typesalletypecours` (
  `NumTypeCours` int(11) NOT NULL,
  `NumTypeSalle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


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
  MODIFY `NumPerso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `planification`
--
ALTER TABLE `planification`
  MODIFY `IdPlanification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `IdProduit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `IdReservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
