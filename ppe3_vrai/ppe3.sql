-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 13 mars 2021 à 20:51
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
-- Base de données : `ppe3`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

DROP TABLE IF EXISTS `candidat`;
CREATE TABLE IF NOT EXISTS `candidat` (
  `idcandidat` int(11) NOT NULL AUTO_INCREMENT,
  `nom_dusage` varchar(45) NOT NULL,
  `nom_jeunefille` varchar(255) DEFAULT NULL,
  `prenom` varchar(45) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `adresse` varchar(75) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `tel` varchar(14) DEFAULT NULL,
  `nationalite` varchar(255) DEFAULT NULL,
  `reunion_info` tinyint(1) DEFAULT NULL,
  `elementdeclencheur` text,
  `objectif2` text,
  `objectif3` text,
  `objectif4` text,
  `objectif5` text,
  `objectif7` text,
  `objectif8` text,
  `pk_formation` text,
  `court` text,
  `moyen` text,
  `long_terme` text,
  `points_forts` text,
  `axe_progres` text,
  `charges_familiales` text,
  `soutien_entourage` tinyint(1) DEFAULT NULL,
  `avis_formatrice` text,
  `amenagement_parcours` text,
  `remarque_entretien` text,
  `motivations` varchar(45) DEFAULT NULL,
  `resultat_test` varchar(45) DEFAULT NULL,
  `avis_projet` varchar(45) DEFAULT NULL,
  `decision` varchar(45) DEFAULT NULL,
  `remarque_decision` text,
  `organisme_connu` text,
  `id_situation` int(11) DEFAULT NULL,
  `commentaire_situation` varchar(45) DEFAULT NULL,
  `id_formation` int(11) DEFAULT NULL,
  `id_session` int(11) DEFAULT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `financeur` varchar(40) DEFAULT NULL,
  `prise_en_charge` tinyint(1) DEFAULT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  `cursus_formulaire` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcandidat`),
  KEY `idformation` (`id_formation`),
  KEY `idsituation_pro` (`id_situation`),
  KEY `id_session` (`id_session`),
  KEY `id_groupe` (`id_groupe`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `candidat`
--

INSERT INTO `candidat` (`idcandidat`, `nom_dusage`, `nom_jeunefille`, `prenom`, `date_naissance`, `adresse`, `cp`, `ville`, `email`, `tel`, `nationalite`, `reunion_info`, `elementdeclencheur`, `objectif2`, `objectif3`, `objectif4`, `objectif5`, `objectif7`, `objectif8`, `pk_formation`, `court`, `moyen`, `long_terme`, `points_forts`, `axe_progres`, `charges_familiales`, `soutien_entourage`, `avis_formatrice`, `amenagement_parcours`, `remarque_entretien`, `motivations`, `resultat_test`, `avis_projet`, `decision`, `remarque_decision`, `organisme_connu`, `id_situation`, `commentaire_situation`, `id_formation`, `id_session`, `mot_de_passe`, `id_groupe`, `financeur`, `prise_en_charge`, `date_ajout`, `date_modification`, `cursus_formulaire`) VALUES
(11, 'akhmouch', 'mohamed akhmouch', 'mohamed', '2021-03-18', '11 square de la butte', '91070', 'BONDOUFLE', 'mohamed@hotmail.fr', '0652868532', 'française', NULL, 'la crise du covid', 'chef de projet', 'cadre de vie', 'gea', 'propre', 'Expérience professionnelle', 'bjbqjkv;', 'necessaire', 'hjghjb', NULL, NULL, 'beau-goss', 'ferrari', '567', NULL, 'FAVORABLE', 'NON', 'NINE', 'JNK', 'JHBJH', 'JHBJH', 'HJVJ', 'NULL', 'internet', 3, '', 3, NULL, '$2y$10$Tunit9uMSwlFAJnJDI6F7e4Q1UgeyBqGKMLza.3whgsw9bzsackvu', 4, NULL, NULL, '2021-03-09', NULL, 1),
(14, 'mhamed', 'mh', 'mhamed', '2021-03-02', '7 rue du bel air', '91090', 'Lisses', 'mhamed@hotmail.fr', '0767928488', 'française', NULL, 'la crise du covid', 'chef de projet', 'cadre de vie', 'gea', 'propre', 'Expérience professionnelle', 'bjbqjkv;', 'necessaire', 'hjghjb', NULL, NULL, 'beau-goss', 'ferrari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'internet', 1, '', 3, NULL, '$2y$10$f3cP3.xhRqp7dzh6tjTWPuU4xGbaZQ47yE5/BRuf96lDRT.KN/pCS', 4, NULL, NULL, NULL, NULL, 2),
(15, 'Tahri', 'bilal Tahri', 'bilal', '2021-03-03', '14 Rue des Ouches', '91540', 'Ormoy', 'm@hotmail.fr', '0652868532', 'marocaine', 0, 'la crise du covid', 'chef de projet', 'cadre de vie', 'gea', 'propre', 'Expérience professionnelle', 'bjbqjkv;', 'necessaire', 'c', 'm', 'l', 'beau-goss', 'ferrari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'internet', 3, '', 2, NULL, '$2y$10$hWreFAmqiswGmukjuZDdxOWkny6uW4MGDeH4LrNsq6/T/fTGqFyrK', 4, NULL, NULL, NULL, NULL, 2),
(16, 'akhmouch', 'mohamed akhmouch', 'mohamed', '2021-03-01', '11 square de la butte', '91070', 'BONDOUFLE', 'o@hotmail.fr', '0652868532', 'i', 1, 'la crise du covid', 'chef de projet', 'cadre de vie', 'gea', 'propre', 'Expérience professionnelle', 'bjbqjkv;', 'necessaire', 'c', 'm', 'l', 'beau-goss', 'ferrari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'internet', 4, '', 4, NULL, '$2y$10$ccP63IV7E9yEzZx0hnRJyuLkjGFUUfZgRbAH7nkAXMWoX6XocuH2.', 3, NULL, NULL, NULL, NULL, 2),
(17, 'z', 'z', 'z', '2021-03-03', 'z', '91090', 'Lisses', 'z@hotmail.fr', '0767928488', 'z', 0, 'la crise du covid', 'chef de projet', 'cadre de vie', 'gea', 'propre', 'Expérience professionnelle', 'bjbqjkv;', 'necessaire', 'c', 'm', 'l', 'beau-goss', 'ferrari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'internet', 3, '', 3, NULL, '$2y$10$2PCfbJgzYZN77xbRESW03udzyxJlMjU8M6aUEQaA9p6IbDuyX8VUK', 4, NULL, NULL, NULL, NULL, 2),
(18, 'e', NULL, 'e', NULL, NULL, NULL, NULL, 'e@hotmail.fr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tFCsPiLwHqw97v1nSS64L.AK5x9jmDSzQiT4zyxxg43HsWa34FK7K', 4, NULL, NULL, NULL, NULL, 0),
(19, 'akhmouch', 'mohamed akhmouch', 'mohamed', '2021-03-03', '11 square de la butte', '91070', 'BONDOUFLE', 'c@hotmail.fr', '0652868532', 'u', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'internet', 3, '', 2, NULL, '$2y$10$4XF00pxVtGhTpIMn83XRP.4R76bMz8.1bg/JajzZ5Y0pU3C5ECc1W', 4, NULL, NULL, NULL, NULL, 1),
(20, 'k', '', 'k', '2021-03-02', '7 rue du louvre', '75001', 'Paris', 'k@hotmail.fr', '0767928488', 'h', 0, 'la crise du covid', 'chef de projet', 'cadre de vie', 'gea', 'propre', 'Expérience professionnelle', 'bjbqjkv;', 'necessaire', 'c', 'm', 'l', 'beau-goss', 'ferrari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'internet', 4, '', 4, NULL, '$2y$10$KOL7OPY4VcpdSCjiZK0TCelbXpLoL5CV5HNAQ.tP7r/.lhibcKNwW', 4, NULL, NULL, NULL, NULL, 2),
(21, 'g', 'mohamed akhmouch', 'g', '2021-03-02', '11 square de la butte', '91070', 'BONDOUFLE', 'g@hotmail.fr', '0652868532', 'u', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'internet', 3, '', 3, NULL, '$2y$10$MTiOIsX.MX4XSKqQSZkW..emklSNsrfJY6HMeyJMLMgW6XBoRE1FW', 4, NULL, NULL, NULL, NULL, 0),
(22, 'x', '', 'x', '2002-12-03', '7 rue du louvre', '75001', 'Paris', 'x@hotmail.fr', '0767928488', 'u', 0, 'la crise du covid', 'chef de projet', 'cadre de vie', 'gea', 'propre', 'Expérience professionnelle', 'bjbqjkv;', 'necessaire', 'c', 'm', 'l', 'beau-goss', 'ferrari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'internet', 4, '', 2, NULL, '$2y$10$f7.1GYPcRvE.5xZT/PxT0.TWosYxu7b/L69AKDJ6gvjnP.9g6/eF6', 4, NULL, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `demarche_entreprise`
--

DROP TABLE IF EXISTS `demarche_entreprise`;
CREATE TABLE IF NOT EXISTS `demarche_entreprise` (
  `iddemarche_entreprise` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(45) NOT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  PRIMARY KEY (`iddemarche_entreprise`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `demarche_entreprise`
--

INSERT INTO `demarche_entreprise` (`iddemarche_entreprise`, `libelle`, `date_ajout`, `date_modification`) VALUES
(1, 'ENQUETES AUPRES DE PROFESSIONELLES', NULL, NULL),
(2, 'VISITES DE SALONS', NULL, NULL),
(3, 'CONSULTATIONS D\'ANNONCES', NULL, NULL),
(4, 'COURS DU SOIR', NULL, NULL),
(5, 'AUTRES', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `divers`
--

DROP TABLE IF EXISTS `divers`;
CREATE TABLE IF NOT EXISTS `divers` (
  `iddivers` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(45) DEFAULT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  PRIMARY KEY (`iddivers`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `divers`
--

INSERT INTO `divers` (`iddivers`, `libelle`, `date_ajout`, `date_modification`) VALUES
(1, 'Un bilan de compétences', NULL, NULL),
(2, 'VAE ', NULL, NULL),
(3, 'CEP', NULL, NULL),
(4, 'CIF/CPF TP ', NULL, NULL),
(5, 'Autre', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE IF NOT EXISTS `document` (
  `id_document` int(11) NOT NULL AUTO_INCREMENT,
  `libellé` varchar(255) NOT NULL,
  PRIMARY KEY (`id_document`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `document`
--

INSERT INTO `document` (`id_document`, `libellé`) VALUES
(1, 'CV'),
(2, 'lettre de motivation'),
(3, 'relevé de note'),
(4, 'baccalauréat'),
(5, 'assurance responsabilité civile'),
(7, 'convention de CPF'),
(8, 'Attestation d\'inscription'),
(9, 'Enquête métier');

-- --------------------------------------------------------

--
-- Structure de la table `document_candidat`
--

DROP TABLE IF EXISTS `document_candidat`;
CREATE TABLE IF NOT EXISTS `document_candidat` (
  `id_candidat` int(11) NOT NULL,
  `id_document` int(11) NOT NULL,
  `url_document` text NOT NULL,
  `date_ajout` date NOT NULL,
  `date_modification` date DEFAULT NULL,
  UNIQUE KEY `id_candidat_2` (`id_candidat`,`id_document`) USING BTREE,
  KEY `id_document` (`id_document`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `document_candidat`
--

INSERT INTO `document_candidat` (`id_candidat`, `id_document`, `url_document`, `date_ajout`, `date_modification`) VALUES
(11, 1, 'motivation/vitesse turner (1).doc', '2021-03-08', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `dossier_etat`
--

DROP TABLE IF EXISTS `dossier_etat`;
CREATE TABLE IF NOT EXISTS `dossier_etat` (
  `id_candidat` int(11) NOT NULL,
  `id_etat` int(11) NOT NULL,
  `date` date NOT NULL,
  KEY `id_etat` (`id_etat`),
  KEY `id_candidat` (`id_candidat`,`id_etat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `effectuer`
--

DROP TABLE IF EXISTS `effectuer`;
CREATE TABLE IF NOT EXISTS `effectuer` (
  `id_c` int(11) NOT NULL,
  `id_d` int(11) NOT NULL,
  `commentaire` blob,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  UNIQUE KEY `id_c_2` (`id_c`,`id_d`),
  KEY `id_c` (`id_c`),
  KEY `id_d` (`id_d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `effectuer`
--

INSERT INTO `effectuer` (`id_c`, `id_d`, `commentaire`, `date_ajout`, `date_modification`) VALUES
(11, 2, NULL, NULL, NULL),
(14, 1, NULL, NULL, NULL),
(15, 1, NULL, '2021-03-09', NULL),
(15, 2, NULL, '2021-03-09', NULL),
(15, 3, NULL, '2021-03-09', NULL),
(15, 4, NULL, '2021-03-09', NULL),
(15, 5, 0x6a6b657a64736e, '2021-03-09', NULL),
(16, 2, NULL, '2021-03-13', NULL),
(16, 4, NULL, '2021-03-09', NULL),
(17, 3, NULL, '2021-03-10', NULL),
(19, 2, NULL, '2021-03-13', NULL),
(19, 3, NULL, '2021-03-13', NULL),
(19, 4, NULL, '2021-03-13', NULL),
(20, 3, NULL, '2021-03-13', NULL),
(20, 4, NULL, '2021-03-13', NULL),
(21, 1, NULL, '2021-03-13', NULL),
(21, 3, NULL, '2021-03-13', NULL),
(22, 4, NULL, '2021-03-13', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id_employe` int(11) NOT NULL AUTO_INCREMENT,
  `nom_employe` varchar(255) NOT NULL,
  `prenom_employe` varchar(255) NOT NULL,
  `mot_passe_employe` varchar(255) DEFAULT NULL,
  `email_employe` varchar(255) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  PRIMARY KEY (`id_employe`),
  KEY `id_groupe` (`id_groupe`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id_employe`, `nom_employe`, `prenom_employe`, `mot_passe_employe`, `email_employe`, `id_groupe`, `date_ajout`, `date_modification`) VALUES
(12, 'mohamed', 'mohamed', '$2y$10$VwGWlTGPyvj/fKk4q8QAUu/t76WOBMDaM1jK9t/5qUdsceqfqipou', 'mohamed@hotmail.fr', 1, '2021-03-01', NULL),
(13, 'akhmouch', 'akhmouch', NULL, 'akhmouch@hotmail.fr', 2, '2021-03-01', NULL),
(14, 'm', 'akhmouch', '$2y$10$Xs8KrFeGKtgK03oGSccIBOqz7vijkZ47l1i1WG6ZjReAdjETgVC/q', 'akhmouch@gmail.com', 1, '2021-03-09', NULL),
(15, 'Tahri', 'chris', '$2y$10$RtPkJyJ5tOMz8XO4Xtznq.wh.3UTHzTgrgnp7RayjRNWL1HYwBLK2', 'tahri@hotmail.fr', 2, '2021-03-09', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
CREATE TABLE IF NOT EXISTS `entreprise` (
  `id_cand` int(11) NOT NULL,
  `id_demarche` int(11) NOT NULL,
  `commentaire` text,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  UNIQUE KEY `id_cand` (`id_cand`,`id_demarche`) USING BTREE,
  KEY `id_demarche` (`id_demarche`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id_cand`, `id_demarche`, `commentaire`, `date_ajout`, `date_modification`) VALUES
(16, 1, NULL, NULL, NULL),
(16, 2, NULL, NULL, NULL),
(20, 2, NULL, NULL, NULL),
(20, 3, NULL, NULL, NULL),
(22, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etat_dossier`
--

DROP TABLE IF EXISTS `etat_dossier`;
CREATE TABLE IF NOT EXISTS `etat_dossier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etat_dossier`
--

INSERT INTO `etat_dossier` (`id`, `nom`) VALUES
(1, 'Finaliser'),
(2, 'Reporter'),
(3, 'Annuler'),
(4, 'Initier'),
(5, 'Transmis');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `idformation` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(45) DEFAULT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  PRIMARY KEY (`idformation`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`idformation`, `libelle`, `date_ajout`, `date_modification`) VALUES
(1, 'assurance', NULL, NULL),
(2, 'banque', NULL, NULL),
(3, 'Comptabilité et gestion ', NULL, NULL),
(4, 'Gestion de la PM', NULL, NULL),
(5, 'Management Commercial Opérationnel ', NULL, NULL),
(6, 'BTS SIO (Option - SLAM)', NULL, NULL),
(7, 'BTS SIO (Option - SISR)', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
CREATE TABLE IF NOT EXISTS `groupe` (
  `id_groupe` int(11) NOT NULL AUTO_INCREMENT,
  `nom_groupe` varchar(255) NOT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  PRIMARY KEY (`id_groupe`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id_groupe`, `nom_groupe`, `date_ajout`, `date_modification`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Développeur', NULL, NULL),
(3, 'Candidat', NULL, NULL),
(4, 'Demandeur', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

DROP TABLE IF EXISTS `langues`;
CREATE TABLE IF NOT EXISTS `langues` (
  `idlangues` int(11) NOT NULL AUTO_INCREMENT,
  `langues` varchar(45) NOT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  PRIMARY KEY (`idlangues`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `langues`
--

INSERT INTO `langues` (`idlangues`, `langues`, `date_ajout`, `date_modification`) VALUES
(1, 'ANGLAIS', NULL, NULL),
(2, 'ESPAGNOL', NULL, NULL),
(3, 'ALLEMAND', NULL, NULL),
(4, 'ITALIEN', NULL, NULL),
(5, 'PORTUGAIS', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `logiciel`
--

DROP TABLE IF EXISTS `logiciel`;
CREATE TABLE IF NOT EXISTS `logiciel` (
  `idlogiciel` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(45) DEFAULT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  PRIMARY KEY (`idlogiciel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `logiciel`
--

INSERT INTO `logiciel` (`idlogiciel`, `libelle`, `date_ajout`, `date_modification`) VALUES
(1, 'TRAITEMENT DE TEXTE (WORD)', NULL, NULL),
(2, 'TABLEUR (EXCEL)', NULL, NULL),
(3, 'AUTRE(S)  ', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `parler`
--

DROP TABLE IF EXISTS `parler`;
CREATE TABLE IF NOT EXISTS `parler` (
  `idcandidat` int(11) NOT NULL,
  `idlangues` int(11) NOT NULL,
  `niveau` varchar(45) DEFAULT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  UNIQUE KEY `idlangues` (`idlangues`,`idcandidat`),
  UNIQUE KEY `idcandidat` (`idcandidat`,`idlangues`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `parler`
--

INSERT INTO `parler` (`idcandidat`, `idlangues`, `niveau`, `date_ajout`, `date_modification`) VALUES
(22, 1, 'débutant', '2021-03-13', NULL),
(16, 2, 'débutant', '2021-03-13', NULL),
(20, 2, 'débutant', '2021-03-13', NULL),
(16, 3, 'débutant', '2021-03-13', NULL),
(20, 3, 'débutant', '2021-03-13', NULL),
(16, 4, 'débutant', '2021-03-13', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `recup_mp`
--

DROP TABLE IF EXISTS `recup_mp`;
CREATE TABLE IF NOT EXISTS `recup_mp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `code` int(11) NOT NULL,
  `confirme` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `recup_mp`
--

INSERT INTO `recup_mp` (`id`, `email`, `code`, `confirme`) VALUES
(2, 'benoit@hotmail.fr', 93965797, NULL),
(5, 'mohamed@hotmail.fr', 96217433, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `idsession` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(20) DEFAULT NULL,
  `duree` varchar(20) NOT NULL,
  `datedebut` date DEFAULT NULL,
  `datefin` date DEFAULT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  PRIMARY KEY (`idsession`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`idsession`, `session`, `duree`, `datedebut`, `datefin`, `date_ajout`, `date_modification`) VALUES
(1, NULL, '9 MOIS', '2021-06-13', '2022-05-30', NULL, NULL),
(2, NULL, '12 MOIS', '2021-09-02', '2022-05-30', NULL, NULL),
(3, NULL, '9 MOIS', '2022-06-19', '2023-05-29', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `situation_pro`
--

DROP TABLE IF EXISTS `situation_pro`;
CREATE TABLE IF NOT EXISTS `situation_pro` (
  `idsituation_pro` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(45) DEFAULT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  PRIMARY KEY (`idsituation_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `situation_pro`
--

INSERT INTO `situation_pro` (`idsituation_pro`, `libelle`, `date_ajout`, `date_modification`) VALUES
(1, 'CDI', NULL, NULL),
(2, 'CDD', NULL, NULL),
(3, 'Intérimaire ', NULL, NULL),
(4, 'Demandeur d’emploi ', NULL, NULL),
(5, 'autre', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `transport`
--

DROP TABLE IF EXISTS `transport`;
CREATE TABLE IF NOT EXISTS `transport` (
  `idtransport` int(11) NOT NULL AUTO_INCREMENT,
  `libellé_transport` varchar(45) NOT NULL,
  `date_ajout` int(11) DEFAULT NULL,
  `date_modification` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtransport`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `transport`
--

INSERT INTO `transport` (`idtransport`, `libellé_transport`, `date_ajout`, `date_modification`) VALUES
(1, 'TRANSPORT EN COMMUN', NULL, NULL),
(2, 'VEHICULE', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utiliser`
--

DROP TABLE IF EXISTS `utiliser`;
CREATE TABLE IF NOT EXISTS `utiliser` (
  `id_candidat` int(11) NOT NULL,
  `idlogiciel` int(11) NOT NULL,
  `niveau_logiciel` varchar(45) NOT NULL,
  `commentaire` varchar(45) DEFAULT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  UNIQUE KEY `id_candidat` (`id_candidat`,`idlogiciel`) USING BTREE,
  KEY `idlogiciel` (`idlogiciel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utiliser`
--

INSERT INTO `utiliser` (`id_candidat`, `idlogiciel`, `niveau_logiciel`, `commentaire`, `date_ajout`, `date_modification`) VALUES
(16, 1, 'débutant', NULL, NULL, NULL),
(16, 2, 'débutant', NULL, NULL, NULL),
(20, 1, 'débutant', NULL, NULL, NULL),
(22, 1, 'débutant', NULL, NULL, NULL),
(22, 2, 'débutant', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vehiculer`
--

DROP TABLE IF EXISTS `vehiculer`;
CREATE TABLE IF NOT EXISTS `vehiculer` (
  `id_candi` int(11) NOT NULL,
  `id_trans` int(11) NOT NULL,
  `date_ajout` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  UNIQUE KEY `id_candi` (`id_candi`,`id_trans`) USING BTREE,
  KEY `id_trans` (`id_trans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vehiculer`
--

INSERT INTO `vehiculer` (`id_candi`, `id_trans`, `date_ajout`, `date_modification`) VALUES
(11, 1, '2021-03-08', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidat`
--
ALTER TABLE `candidat`
  ADD CONSTRAINT `candidat_ibfk_1` FOREIGN KEY (`id_session`) REFERENCES `session` (`idsession`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidat_ibfk_2` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`id_groupe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idformation` FOREIGN KEY (`id_formation`) REFERENCES `formation` (`idformation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idsituation_pro` FOREIGN KEY (`id_situation`) REFERENCES `situation_pro` (`idsituation_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `document_candidat`
--
ALTER TABLE `document_candidat`
  ADD CONSTRAINT `document_candidat_ibfk_1` FOREIGN KEY (`id_document`) REFERENCES `document` (`id_document`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `document_candidat_ibfk_2` FOREIGN KEY (`id_candidat`) REFERENCES `candidat` (`idcandidat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `dossier_etat`
--
ALTER TABLE `dossier_etat`
  ADD CONSTRAINT `dossier_etat_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `candidat` (`idcandidat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dossier_etat_ibfk_2` FOREIGN KEY (`id_etat`) REFERENCES `etat_dossier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `effectuer`
--
ALTER TABLE `effectuer`
  ADD CONSTRAINT `effectuer_ibfk_1` FOREIGN KEY (`id_d`) REFERENCES `divers` (`iddivers`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `effectuer_ibfk_2` FOREIGN KEY (`id_c`) REFERENCES `candidat` (`idcandidat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`id_groupe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD CONSTRAINT `id_cand` FOREIGN KEY (`id_cand`) REFERENCES `candidat` (`idcandidat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_demarche` FOREIGN KEY (`id_demarche`) REFERENCES `demarche_entreprise` (`iddemarche_entreprise`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `parler`
--
ALTER TABLE `parler`
  ADD CONSTRAINT `idcandidat` FOREIGN KEY (`idcandidat`) REFERENCES `candidat` (`idcandidat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idlangues` FOREIGN KEY (`idlangues`) REFERENCES `langues` (`idlangues`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utiliser`
--
ALTER TABLE `utiliser`
  ADD CONSTRAINT `id_candidat` FOREIGN KEY (`id_candidat`) REFERENCES `candidat` (`idcandidat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idlogiciel` FOREIGN KEY (`idlogiciel`) REFERENCES `logiciel` (`idlogiciel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `vehiculer`
--
ALTER TABLE `vehiculer`
  ADD CONSTRAINT `id_candi` FOREIGN KEY (`id_candi`) REFERENCES `candidat` (`idcandidat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_trans` FOREIGN KEY (`id_trans`) REFERENCES `transport` (`idtransport`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
