-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 18 avr. 2021 à 22:07
-- Version du serveur :  10.3.9-MariaDB
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
-- Base de données :  `zfl2-zle_buhma`
--

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `actua`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `actua` (
`new_num` int(11)
,`new_date_publication` date
,`cpt_pseudo` varchar(60)
);

-- --------------------------------------------------------

--
-- Structure de la table `tj_rassemble_rbl`
--

CREATE TABLE `tj_rassemble_rbl` (
  `selec_numero` int(11) NOT NULL,
  `elmt_numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tj_rassemble_rbl`
--

INSERT INTO `tj_rassemble_rbl` (`selec_numero`, `elmt_numero`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15);

-- --------------------------------------------------------

--
-- Structure de la table `t_compte_cpt`
--

CREATE TABLE `t_compte_cpt` (
  `cpt_pseudo` varchar(60) NOT NULL,
  `cpt_mdp` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_compte_cpt`
--

INSERT INTO `t_compte_cpt` (`cpt_pseudo`, `cpt_mdp`) VALUES
('Alex', 'cc0fd7a5c964f1ca25e12d503f7e40cd'),
('CCambray', '8555fd0a608e57e7d479b6d5b454284c'),
('ChrisLB', 'f25ee91f9e7c05d308455b2caeab6089'),
('gestionnaire1', '388d4ca7d89f912a8fe96b04fb3d8e22'),
('Lulu', 'a8ddc3749aa40a14e95a53f8c79e3d5b'),
('Malou', 'f672898e960ac8bf3969f04e67b50464'),
('Mathou', 'af32e4da44f6bf70c29f0310806d67a8'),
('MLeBuhan', 'f0d9f155c4361621f5ba390d4e03f7e2'),
('ThierryLB', '5939378a56ad37977fdb9c01fdfbfd80'),
('tuctuc16', 'cc8c0a97c2dfcd73caff160b65aa39e2'),
('tuxie', '83a3d09810370f71eb922d8dae829c76');

-- --------------------------------------------------------

--
-- Structure de la table `t_element_elmt`
--

CREATE TABLE `t_element_elmt` (
  `elmt_numero` int(11) NOT NULL,
  `elmt_intitule` varchar(60) NOT NULL,
  `elmt_descriptif` varchar(500) NOT NULL,
  `elmt_date_ajout` date NOT NULL,
  `elmt_image` varchar(100) DEFAULT NULL,
  `elmt_etat` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_element_elmt`
--

INSERT INTO `t_element_elmt` (`elmt_numero`, `elmt_intitule`, `elmt_descriptif`, `elmt_date_ajout`, `elmt_image`, `elmt_etat`) VALUES
(1, 'SAS O2CEAN', 'Location bateaux', '2019-03-15', '\r\nimg/gallery/O2CEAN.jpg', 'P'),
(2, 'ARIMAIR', 'Ecole de plongée', '2019-03-15', 'img/gallery/ecole_plongee.jpg', 'P'),
(3, 'Océanopolis', '\r\nAquarium', '2019-03-01', '\r\nimg/gallery/Océanopolis.jpg', 'P'),
(4, 'Finist mer', '\r\nCompagnie maritime', '2021-01-08', '\r\nimg/gallery/finistmer.jpg', 'P'),
(5, 'Moulin mer', '\r\nCentre nautiques', '2021-01-08', '\r\nimg/gallery/moulin_mer.jpg', 'P'),
(6, 'GR34', '\r\nRandonnée', '2020-02-15', '\r\nimg/gallery/gr34.jpg', 'P'),
(7, 'La récré des 3 curés', '\r\nParc d attraction', '2020-02-15', '\r\nimg/gallery/recre_des_3_cures.jpg', 'P'),
(8, 'Jardin exotique Saint-Renan', 'Ballade', '2020-02-15', '\r\nimg/gallery/jardin_exotique.jpg', 'P'),
(9, 'Fun parc crozon', '\r\nAccrobranche/paintball', '2021-01-08', '\r\nimg/gallery/fun-park-crozon.jpg', 'P'),
(10, 'Cycl evasion Ouessant', '\r\nLocation vélos', '2020-02-15', '\r\nimg/gallery/cyclevasion.jpg', 'P'),
(11, 'Musée des beaux-Arts Brest', '\r\nMusée', '2019-03-15', '\r\nimg/gallery/musee-des-beaux-arts1.jpg', 'P'),
(12, 'Brest city tour', '\r\nvisite audio guidée', '2019-03-15', '\r\nimg/gallery/brestcitytour.jpg', 'P'),
(13, 'Les ateliers des capucins d hier à aujourd hui', '\r\nVisites guidées', '2019-03-15', '\r\nimg/gallery/AteliersCapucin.jpg', 'P'),
(14, 'Musée national de la Marine', '\r\nMusée', '2019-03-15', '\r\nimg/gallery/museemarine.jpg', 'P'),
(15, 'La ferme aux insectes - Savéol', '\r\nVisites guidées', '2021-01-08', '\r\nimg/gallery/fermeinsectes.jpg', 'P'),
(16, 'Jardin du Conservatoire botanique national de Brest', '\r\nBallade', '2021-01-08', '\r\nimg/gallery/conservatoirebotanique.jpg', 'P'),
(17, 'Vedettes Sirènes', 'Visites grottes Marine', '2021-02-01', 'img/gallery/vedettessirenes', 'B');

-- --------------------------------------------------------

--
-- Structure de la table `t_lien_li`
--

CREATE TABLE `t_lien_li` (
  `li_numero` int(11) NOT NULL,
  `li_titre` varchar(60) NOT NULL,
  `li_URL` varchar(150) NOT NULL,
  `li_auteur` varchar(60) NOT NULL,
  `li_date_publication` date NOT NULL,
  `elmt_numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_lien_li`
--

INSERT INTO `t_lien_li` (`li_numero`, `li_titre`, `li_URL`, `li_auteur`, `li_date_publication`, `elmt_numero`) VALUES
(1, 'SAS O2CEAN', 'http://www.o2ceanbrest.com', 'Valérie Marc', '2019-03-15', 1),
(2, 'ARIMAIR', 'https://www.arimair.fr', '\r\nValérie Marc', '2019-03-15', 2),
(3, 'Océanopolis', '\r\nhttps://www.oceanopolis.com', '\r\nValérie Marc', '2019-03-15', 3),
(4, 'Finist mer', 'https://www.finist-mer.fr', '\r\nChristian Cambray', '2021-01-08', 4),
(5, 'Moulin mer', 'https://www.moulin-mer.fr', ' \r\nChristian Cambray', '2021-01-08', 5),
(6, 'GR 34', 'https://www.ffrandonnee.fr', '\r\nMarie Le Buhan', '2020-02-15', 6),
(7, 'La récré des 3 curés', 'https://www.larecredes3cures.com', '\r\nMarie Le Buhan', '2020-02-15', 7),
(8, 'Jardin exotique Saint-Renan', '\r\nhttps://www.jardin-exotique-de-saint-renan.com', ' \r\nMarie Le Buhan', '2020-02-15', 8),
(9, 'Fun park crozon', 'funpark-crozon.com', '\r\nChristian Cambray', '2021-01-08', 9),
(10, 'cyclevasion', 'https://www.cyclevasion.fr/', '\r\n \r\nMarie Le Buhan', '2020-02-15', 10),
(11, 'Musée des beaux arts', 'https://www.brest.fr', '\r\nMathilde Le Buhan', '2019-03-15', 11),
(12, 'Brest city tour', 'https://www.brestcitytour.fr/', '\r\n\r\nMathilde Le Buhan', '2019-03-15', 12),
(13, 'Les ateliers des capucins d hier à aujourd hui', 'marinasbrest.fr', 'Mathilde Le Buhan', '2019-03-15', 13),
(14, 'Musée national de la Marine', 'musee-marine.fr', '\r\nMathilde Le Buhan', '2019-03-15', 14),
(15, 'La ferme aux insectes - Savéol', 'https://www.saveol.com/fr/la-ferme-aux-insectes.html', '\r\n\r\nChristian Cambray', '2021-01-08', 15),
(16, 'Vedettes Sirènes', 'https://www.sirenes.bzh/', 'Marie LE BUHAN', '2021-02-01', 17);

-- --------------------------------------------------------

--
-- Structure de la table `t_news_new`
--

CREATE TABLE `t_news_new` (
  `new_num` int(11) NOT NULL,
  `new_titre` varchar(100) NOT NULL,
  `new_texte` varchar(500) NOT NULL,
  `new_date_publication` date NOT NULL,
  `new_etat` char(1) NOT NULL,
  `cpt_pseudo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_news_new`
--

INSERT INTO `t_news_new` (`new_num`, `new_titre`, `new_texte`, `new_date_publication`, `new_etat`, `cpt_pseudo`) VALUES
(1, 'Annulation de Brest 2020->2024', 'Suite aux annonces répétées du gouvernement, les organisateurs après mûre reflexion ont décidé d annuler Brest 2020.', '2018-06-01', 'C', 'Mathou'),
(2, 'Les chefs passent à table', 'En cette situation sanitaire actuelle, impossible d aller au restaurant alors, le restaurant vient à nous avec l opération « Les chefs passent à table ». Les restaurateurs brestois vous proposent leurs recettes coup de cœur, il ny a plus qu à reproduire!', '2020-12-01', 'A', 'Mathou'),
(3, 'Visions d Afrique', '\r\nExposition sur la diversité de l art africain qui a lieu à partir du 15 janvier à l espace d art de Le Comoedia (Musée des beaux-arts). Chaque semaine un nouvel artiste sera à l honneur.', '2021-01-01', 'A', 'MLeBuhan'),
(4, 'Pluie d images 2021', '\r\nLe festival de photographie pluie d images 2021 a pour thème cette cette année, la photo en mode « décalé ». Il aura lieu du 16 janvier au 27 février 2021. En cette situation de crise sanitaire, la programmation et les animations sont les mêmes mais adapté et prête à vous acceuillir.', '2021-01-15', 'A', 'CCambray'),
(11, 'Anne Roumanoff - Reporté ', 'La représentation \"Tout va bien!\" de Anne Roumanoff qui devait avoir lieu le 16 avril 2021 à Plougastel Daoulas a été reporté au 28 avril 2022. ', '2021-04-15', 'A', 'CCambray'),
(17, 'Brest 2020_Reporté', 'C\'est officiel! Brest 2020 est reporté à 2024!', '2021-04-15', 'A', 'MLeBuhan');

-- --------------------------------------------------------

--
-- Structure de la table `t_presentation_prst`
--

CREATE TABLE `t_presentation_prst` (
  `prst_numero` int(11) NOT NULL,
  `prst_nom` varchar(60) NOT NULL,
  `prst_adresse` varchar(60) NOT NULL,
  `prst_email` varchar(150) NOT NULL,
  `prst_num_telephone` char(10) NOT NULL,
  `prst_horaires` varchar(50) NOT NULL,
  `prst_texte` varchar(500) NOT NULL,
  `cpt_pseudo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_presentation_prst`
--

INSERT INTO `t_presentation_prst` (`prst_numero`, `prst_nom`, `prst_adresse`, `prst_email`, `prst_num_telephone`, `prst_horaires`, `prst_texte`, `cpt_pseudo`) VALUES
(1, 'Office de tourisme Brest', '68 Avenue Georges Clémenceau, 29200 Brest', 'office-tourisme.brest@gmail.com', '0298442496', '10h-17h sauf mardi:14h-17h et dimanche: fermé', 'BIENVENUE SUR L OFFICE DE TOURISME DE BREST!', 'gestionnaire1');

-- --------------------------------------------------------

--
-- Structure de la table `t_profil_pfl`
--

CREATE TABLE `t_profil_pfl` (
  `pfl_nom` varchar(60) NOT NULL,
  `pfl_prenom` varchar(60) NOT NULL,
  `pfl_email` varchar(150) NOT NULL,
  `pfl_validite` char(1) NOT NULL,
  `pfl_statut` char(1) NOT NULL,
  `pfl_date_creation` date NOT NULL,
  `cpt_pseudo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_profil_pfl`
--

INSERT INTO `t_profil_pfl` (`pfl_nom`, `pfl_prenom`, `pfl_email`, `pfl_validite`, `pfl_statut`, `pfl_date_creation`, `cpt_pseudo`) VALUES
('Favreau', 'Alexia', 'aliexia.favreau@gmail.com', 'D', 'R', '2021-04-15', 'Alex'),
('Cambray', 'Christian', 'christian.cambray@gmail.com', 'A', 'A', '0000-00-00', 'CCambray'),
('Le Buhan', 'Christelle', 'christ123@gmail.com', 'D', 'R', '2018-12-23', 'ChrisLB'),
('Marc', 'Valerie', 'valeriemarc@univ-brest.fr', 'A', 'A', '2017-01-01', 'gestionnaire1'),
('Hochet', 'Lucie', 'lucie.hochet@gmail.com', 'D', 'R', '2021-04-15', 'Lulu'),
('Guillerm', 'Malwenne', 'malwenne.guillerm@laposte.net', 'A', 'R', '2021-03-22', 'Malou'),
('Le Buhan', 'Mathilde', 'mathilde.lebuhan@gmail.com', 'A', 'R', '2018-06-10', 'Mathou'),
('Le Buhan', 'Marie', 'marie.lebuhan@gmail.com', 'A', 'A', '2020-02-06', 'MLeBuhan'),
('Le Buhan', 'Thierry', 'thierry.lebuhan@gmail.com', 'D', 'R', '2021-01-26', 'ThierryLB'),
('o\'bradie', 'Marie', 'marie.lebuhan@gmail.com', 'A', 'R', '2021-04-16', 'tuctuc16'),
('Morzadec', 'Emilie', 'emilie.morzadec@laposte.net', 'A', 'R', '2021-02-14', 'tuxie');

-- --------------------------------------------------------

--
-- Structure de la table `t_selection_selec`
--

CREATE TABLE `t_selection_selec` (
  `selec_numero` int(11) NOT NULL,
  `selec_intitule` varchar(60) NOT NULL,
  `selec_texte` varchar(200) NOT NULL,
  `selec_date_ajout` date NOT NULL,
  `cpt_pseudo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_selection_selec`
--

INSERT INTO `t_selection_selec` (`selec_numero`, `selec_intitule`, `selec_texte`, `selec_date_ajout`, `cpt_pseudo`) VALUES
(1, 'Activités nautiques', 'Que vous êtes amateur de calme balade sur une rivière, de sensations forte ou que vous préférez rester les pieds sur terre, trouvez les activitées qui sont faites pour vous!', '2019-03-15', 'gestionnaire1'),
(2, 'Activités en plein air', '\r\nEnvie de prendre un bol dair frais? Que vous préférez les parcs dattraction, la plage ou la nature, vous trouverez forcément quelque chose à votre goût!', '2020-02-15', 'MLeBuhan'),
(3, 'Culture et Patrimoine', '\r\nBrest est riche de son histoire, de son patrimoine et de sa culture ! Que vous préférez les visites guidées ou les découvertes autonomes nous saurons vous satisfaire.', '2019-03-15', 'Mathou');

-- --------------------------------------------------------

--
-- Structure de la vue `actua`
--
DROP TABLE IF EXISTS `actua`;

CREATE ALGORITHM=UNDEFINED DEFINER=`zle_buhma`@`%` SQL SECURITY DEFINER VIEW `actua`  AS  select `n`.`new_num` AS `new_num`,`n`.`new_date_publication` AS `new_date_publication`,`n`.`cpt_pseudo` AS `cpt_pseudo` from `t_news_new` `n` order by `n`.`new_date_publication` desc ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tj_rassemble_rbl`
--
ALTER TABLE `tj_rassemble_rbl`
  ADD PRIMARY KEY (`selec_numero`,`elmt_numero`),
  ADD KEY `fk_rbl_elmt` (`elmt_numero`);

--
-- Index pour la table `t_compte_cpt`
--
ALTER TABLE `t_compte_cpt`
  ADD PRIMARY KEY (`cpt_pseudo`);

--
-- Index pour la table `t_element_elmt`
--
ALTER TABLE `t_element_elmt`
  ADD PRIMARY KEY (`elmt_numero`);

--
-- Index pour la table `t_lien_li`
--
ALTER TABLE `t_lien_li`
  ADD PRIMARY KEY (`li_numero`),
  ADD KEY `elmt_numero` (`elmt_numero`);

--
-- Index pour la table `t_news_new`
--
ALTER TABLE `t_news_new`
  ADD PRIMARY KEY (`new_num`),
  ADD KEY `cpt_pseudo` (`cpt_pseudo`);

--
-- Index pour la table `t_presentation_prst`
--
ALTER TABLE `t_presentation_prst`
  ADD PRIMARY KEY (`prst_numero`),
  ADD KEY `cpt_pseudo` (`cpt_pseudo`);

--
-- Index pour la table `t_profil_pfl`
--
ALTER TABLE `t_profil_pfl`
  ADD PRIMARY KEY (`cpt_pseudo`);

--
-- Index pour la table `t_selection_selec`
--
ALTER TABLE `t_selection_selec`
  ADD PRIMARY KEY (`selec_numero`),
  ADD KEY `cpt_pseudo` (`cpt_pseudo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_element_elmt`
--
ALTER TABLE `t_element_elmt`
  MODIFY `elmt_numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `t_lien_li`
--
ALTER TABLE `t_lien_li`
  MODIFY `li_numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `t_news_new`
--
ALTER TABLE `t_news_new`
  MODIFY `new_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `t_presentation_prst`
--
ALTER TABLE `t_presentation_prst`
  MODIFY `prst_numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `t_selection_selec`
--
ALTER TABLE `t_selection_selec`
  MODIFY `selec_numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tj_rassemble_rbl`
--
ALTER TABLE `tj_rassemble_rbl`
  ADD CONSTRAINT `fk_rbl_elmt` FOREIGN KEY (`elmt_numero`) REFERENCES `t_element_elmt` (`elmt_numero`),
  ADD CONSTRAINT `fk_rbl_selec` FOREIGN KEY (`selec_numero`) REFERENCES `t_selection_selec` (`selec_numero`);

--
-- Contraintes pour la table `t_lien_li`
--
ALTER TABLE `t_lien_li`
  ADD CONSTRAINT `t_lien_li_ibfk_1` FOREIGN KEY (`elmt_numero`) REFERENCES `t_element_elmt` (`elmt_numero`);

--
-- Contraintes pour la table `t_news_new`
--
ALTER TABLE `t_news_new`
  ADD CONSTRAINT `t_news_new_ibfk_1` FOREIGN KEY (`cpt_pseudo`) REFERENCES `t_compte_cpt` (`cpt_pseudo`);

--
-- Contraintes pour la table `t_presentation_prst`
--
ALTER TABLE `t_presentation_prst`
  ADD CONSTRAINT `t_presentation_prst_ibfk_1` FOREIGN KEY (`cpt_pseudo`) REFERENCES `t_compte_cpt` (`cpt_pseudo`);

--
-- Contraintes pour la table `t_profil_pfl`
--
ALTER TABLE `t_profil_pfl`
  ADD CONSTRAINT `t_profil_pfl_ibfk_1` FOREIGN KEY (`cpt_pseudo`) REFERENCES `t_compte_cpt` (`cpt_pseudo`);

--
-- Contraintes pour la table `t_selection_selec`
--
ALTER TABLE `t_selection_selec`
  ADD CONSTRAINT `t_selection_selec_ibfk_1` FOREIGN KEY (`cpt_pseudo`) REFERENCES `t_compte_cpt` (`cpt_pseudo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
