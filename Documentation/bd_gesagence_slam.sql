-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 20 avr. 2022 à 11:09
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd_gesagence_slam`
--

-- --------------------------------------------------------

--
-- Structure de la table `demande_info`
--

CREATE TABLE `demande_info` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `rencontre` char(5) NOT NULL,
  `remarque` varchar(120) NOT NULL,
  `id_origine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demande_info`
--

INSERT INTO `demande_info` (`id`, `nom`, `email`, `tel`, `date`, `rencontre`, `remarque`, `id_origine`) VALUES
(1, 'dennel', 'fabien.dennel', '0345210207', '2000-02-10', 'N', '', 1),
(2, 'mathis', 'mathis@gmail.com', '0345210207', '2000-02-10', 'O', '', 1),
(3, 'clement', 'clement@gmail.com', '0345210207', '2000-02-10', 'N', 'salut', 4),
(10, 'clement', 'clement@gmail.com', '0345210207', '2021-02-04', 'N', '', 1),
(11, 'clement', 'clement@gmail.com', '0345210207', '2021-02-04', 'N', '', 1),
(12, 'Fabien', 'test', '0345242167', '2002-01-10', 'N', '', 2),
(13, 'Fabien', 'test', '0345242167', '1222-02-01', 'O', '', 2),
(14, 'Fabien', 'test', '0345242167', '1222-02-01', 'O', '', 2);

-- --------------------------------------------------------

--
-- Structure de la table `demande_info_loisir`
--

CREATE TABLE `demande_info_loisir` (
  `id_demande_info` int(11) NOT NULL,
  `id_loisir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_info_mode_contact`
--

CREATE TABLE `demande_info_mode_contact` (
  `id_demande_info` int(11) NOT NULL,
  `id_mode_contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `idfonction` int(11) NOT NULL,
  `telephone` varchar(14) NOT NULL,
  `profil` varchar(50) NOT NULL,
  `identifiant` varchar(150) NOT NULL,
  `mot_de_passe` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id`, `nom`, `prenom`, `idfonction`, `telephone`, `profil`, `identifiant`, `mot_de_passe`) VALUES
(1, 'Mjouid', 'Perrine', 1, '+33617736680', '', '', ''),
(2, 'Fouilinos', 'Romain', 2, '+33665432700', '', '', ''),
(3, 'Lebos', 'Agnès', 3, '+337330734545', '', '', ''),
(4, 'Pratt', 'Gary', 3, '+33633224521', '', '', ''),
(14, 'paul', 'louis', 2, '0345148506', 'administrateur', 'paull', '42f31dd043849c10c6582716a4460ee93adf89c5');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `libelle`) VALUES
(1, 'Responsable de l\'agence'),
(2, 'Comptable'),
(3, 'Commercial');

-- --------------------------------------------------------

--
-- Structure de la table `horaire_ouverture`
--

CREATE TABLE `horaire_ouverture` (
  `id` int(11) NOT NULL,
  `jour` varchar(60) NOT NULL,
  `matin` varchar(60) NOT NULL,
  `apres_midi` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `horaire_ouverture`
--

INSERT INTO `horaire_ouverture` (`id`, `jour`, `matin`, `apres_midi`) VALUES
(1, 'Lundi', '10h30 à 12h30', '14h00 à 18h30'),
(2, 'Mardi', '8h30 à 12h30', '14h00 à 18h30'),
(3, 'Mercredi', '10h30 à 12h30', '13h30 à 20h00'),
(4, 'Jeudi', '10h30 à 12h30', '13h30 à 19h00'),
(5, 'Vendredi', '9h00 à 12h30', '13h30 à 20h00'),
(6, 'Samedi', '9h00 à 12h30', '13h30 à 20h00');

-- --------------------------------------------------------

--
-- Structure de la table `loisir`
--

CREATE TABLE `loisir` (
  `id` int(11) NOT NULL,
  `libelle` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `loisir`
--

INSERT INTO `loisir` (`id`, `libelle`) VALUES
(6, 'sports de combat'),
(7, 'cyclisme'),
(8, 'alpinisme'),
(9, 'lecture'),
(10, 'équitation');

-- --------------------------------------------------------

--
-- Structure de la table `mode_contact`
--

CREATE TABLE `mode_contact` (
  `id` int(11) NOT NULL,
  `libelle` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mode_contact`
--

INSERT INTO `mode_contact` (`id`, `libelle`) VALUES
(1, 'recevoir la newsletter de Linkretz'),
(2, ' être rappelé(e)'),
(3, 'obtenir un rendez-vous');

-- --------------------------------------------------------

--
-- Structure de la table `origine`
--

CREATE TABLE `origine` (
  `id` int(11) NOT NULL,
  `libelle` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `origine`
--

INSERT INTO `origine` (`id`, `libelle`) VALUES
(1, 'En surfant sur internet'),
(2, 'Par un ami'),
(3, 'Par un autre site'),
(4, 'Par hasard'),
(5, 'autrement');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE `specialite` (
  `id` int(11) NOT NULL,
  `libelle` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`id`, `libelle`) VALUES
(1, 'Séjours scandinaves'),
(2, 'Séjours en Asie'),
(3, 'Séjours dans le bassin méditerranéen'),
(4, 'Séjours en Italie');

-- --------------------------------------------------------

--
-- Structure de la table `tour_operateur`
--

CREATE TABLE `tour_operateur` (
  `id` int(11) NOT NULL,
  `num_immat` varchar(11) NOT NULL,
  `nom` varchar(75) NOT NULL,
  `description` varchar(400) NOT NULL,
  `id_specialite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tour_operateur`
--

INSERT INTO `tour_operateur` (`id`, `num_immat`, `nom`, `description`, `id_specialite`) VALUES
(1, 'M2356437843', 'Benett Voyages', 'Spécialiste des séjours scandinaves (Suède, Finlande, Laponie...), Benett Voyages a pour but de partager sa passion des cultures nordiques. Pour cela, le tour opérateur propose un large choix de circuits, de croisières, de séjours ou encore de week-ends.', 1),
(2, 'M2353447820', 'Climats du Monde', 'Spécialiste de l\'Asie, le voyagiste Climats du Monde offre une large gamme de circuits et de séjours aux meilleurs tarifs, ainsi que de nombreux voyages thématiques (sport, culture, zen). Avec Climats du Monde, la Thaïlande, le Vietnam ou encore le Népal sont à portée de main.', 2),
(3, 'M2311117866', 'Donatello', 'Spécialiste de l\'Italie, le voyagiste Donatello propose un large choix de séjours, de week-ends, de circuits ou de voyages personnalisés vers de nombreuses destinations, à l\'instar de l\'Italie et ses îles la Sicile et la Sardaigne, mais aussi le Portugal, Malte ou encore le Kenya.', 4),
(4, 'M2312232211', 'Visiteurs en Asie', 'Avec des destinations phares comme la Thaïlande, l\'Indonésie ou encore le Vietnam, Visiteurs en Asie permet de voyager vers plus de 30 destinations. Sélectionnés avec soin, les séjours et circuits de Visiteurs en Asie répondent aux attentes des voyageurs.', 2),
(5, 'M2356227844', 'Marmara', 'Spécialiste des voyages dans le bassin méditerranéen, Marmara propose à ses clients une large gamme de circuits, de séjours et de croisières et à la particularité de posséder plusieurs clubs. Parmi ses destinations phares citons la Grèce, la Turquie ou encore l\'Egypte.', 3),
(6, 'M2356000860', 'Italowcost', 'Leader des courts séjours à prix dégriffés vers l\'Italie, et plus précisément vers Venise, Italowcost propose des prestations tout compris vers Venise, Rome et Prague. Italowcost est la marque de référence pour les séjours en logement 3 ou 4 étoiles à bas prix en Italie.', 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `demande_info`
--
ALTER TABLE `demande_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_demande_info_id_origine` (`id_origine`);

--
-- Index pour la table `demande_info_loisir`
--
ALTER TABLE `demande_info_loisir`
  ADD PRIMARY KEY (`id_demande_info`,`id_loisir`),
  ADD KEY `FK_demande_info_loisir_id_loisir` (`id_loisir`);

--
-- Index pour la table `demande_info_mode_contact`
--
ALTER TABLE `demande_info_mode_contact`
  ADD PRIMARY KEY (`id_demande_info`,`id_mode_contact`),
  ADD KEY `FK_demande_info_mode_contact_id_mode_contact` (`id_mode_contact`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_employe__idfonction` (`idfonction`);

--
-- Index pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `horaire_ouverture`
--
ALTER TABLE `horaire_ouverture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `loisir`
--
ALTER TABLE `loisir`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mode_contact`
--
ALTER TABLE `mode_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `origine`
--
ALTER TABLE `origine`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tour_operateur`
--
ALTER TABLE `tour_operateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_specialite` (`id_specialite`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `demande_info`
--
ALTER TABLE `demande_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `horaire_ouverture`
--
ALTER TABLE `horaire_ouverture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `loisir`
--
ALTER TABLE `loisir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `mode_contact`
--
ALTER TABLE `mode_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `origine`
--
ALTER TABLE `origine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `specialite`
--
ALTER TABLE `specialite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tour_operateur`
--
ALTER TABLE `tour_operateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `demande_info`
--
ALTER TABLE `demande_info`
  ADD CONSTRAINT `FK_demande_info_id_origine` FOREIGN KEY (`id_origine`) REFERENCES `origine` (`id`);

--
-- Contraintes pour la table `demande_info_loisir`
--
ALTER TABLE `demande_info_loisir`
  ADD CONSTRAINT `FK_demande_info_loisir_id_demande_info` FOREIGN KEY (`id_demande_info`) REFERENCES `demande_info` (`id`),
  ADD CONSTRAINT `FK_demande_info_loisir_id_loisir` FOREIGN KEY (`id_loisir`) REFERENCES `loisir` (`id`);

--
-- Contraintes pour la table `demande_info_mode_contact`
--
ALTER TABLE `demande_info_mode_contact`
  ADD CONSTRAINT `FK_demande_info_mode_contact_id_demande_info` FOREIGN KEY (`id_demande_info`) REFERENCES `demande_info` (`id`),
  ADD CONSTRAINT `FK_demande_info_mode_contact_id_mode_contact` FOREIGN KEY (`id_mode_contact`) REFERENCES `mode_contact` (`id`);

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `FK_employe__idfonction` FOREIGN KEY (`idfonction`) REFERENCES `fonction` (`id`);

--
-- Contraintes pour la table `tour_operateur`
--
ALTER TABLE `tour_operateur`
  ADD CONSTRAINT `FK_id_specialite` FOREIGN KEY (`id_specialite`) REFERENCES `specialite` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
